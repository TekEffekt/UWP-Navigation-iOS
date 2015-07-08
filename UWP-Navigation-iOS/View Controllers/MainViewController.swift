//
//  MainViewController.swift
//  
//
//  Created by Kyle Zawacki on 6/29/15.
//
//

import UIKit

class MainViewController: UIViewController, DTAlertViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var mapView: MapTransform!
    var populationAlert:DTAlertView?
    var zoneForRating:ZonePolygon?
    var indicator: UIActivityIndicatorView!
    var blurView: UIView?
    var blackBackgroundView: UIView?
    var progressBar:ITProgressBar?
    var initialLoad:Bool?
    var internetCheckTimer:NSTimer?
    
    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        self.progressBar = ITProgressBar(frame: CGRectMake(CGRectGetMidX(self.view.frame), 0, self.view.frame.width, 3))
        self.view.addSubview(self.progressBar!)
        self.progressBar!.hidden = true
        self.progressBar!.progress = 0.0
        
        self.populationAlert = DTAlertView(title: "How full is this zone?", delegate: self, cancelButtonTitle: "Cancel", positiveButtonTitle: "Submit")
        self.indicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
        self.indicator.hidesWhenStopped = true
        
        if #available(iOS 8.0, *) {
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            self.blurView = UIVisualEffectView(effect: blurEffect)
            self.blurView?.frame = self.view.frame
        } else {
            // Fallback on earlier versions
            self.blurView = UIView(frame: self.view.frame)
            self.blurView?.backgroundColor = UIColor.blackColor()
        }
        
        self.blackBackgroundView = UIView(frame: self.view.frame)
        self.blackBackgroundView!.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.blackBackgroundView!)
        self.view.addSubview(self.blurView!)
        
        self.initialLoad = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.mapView.setupMapWithParent(self) // Needs to be called after contraints have been layed out, which is why the call is here
        self.indicator.center = self.mapView.center
        self.view.addSubview(self.indicator)
        self.indicator.startAnimating()
        getFullnessOfZones()
        
        NSTimer.scheduledTimerWithTimeInterval(Constants.TIME_TO_REFRESH, target: self, selector: Selector("getFullnessOfZones"), userInfo: nil, repeats: true)
        self.internetCheckTimer = NSTimer.scheduledTimerWithTimeInterval(Constants.SERVICE_TIMEOUT, target: self, selector: Selector("alertUserOfNoInternetConnection"), userInfo: nil, repeats: false)
    }
    
    // MARK: Networking
    func getFullnessOfZones()
    {
        let zones:[ZonePolygon] = Polyfactory().parkingZones
        
        self.progressBar!.hidden = false
        var numberOfZonesLoaded:CGFloat = 0
        
        let queue = NSOperationQueue()
        
        queue.addOperationWithBlock { () -> Void in
            var fullnessStrings:[String] = [String]()
            
            for zone:ZonePolygon in zones
            {
                var fullnessString = DatabaseExchange.getFullness(forZone: zone.id!)
                
                if let check = fullnessString
                {
                    fullnessStrings.append(fullnessString!)
                }
                
                numberOfZonesLoaded++
                
                NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                    self.progressBar!.progress = numberOfZonesLoaded / CGFloat(35.0)
                })
            }
            
            print(fullnessStrings)
            
            if fullnessStrings.count > 0
            {
                NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                    self.mapView.colorMap(withFullnessAndConfidenceLevels: fullnessStrings)
                    self.progressBar!.hidden = true
                    self.progressBar!.progress = CGFloat(0.0)
                    
                    if(self.internetCheckTimer!.valid)
                    {
                        self.internetCheckTimer!.invalidate()
                    }
                    
                    if(self.initialLoad == true)
                    {
                        self.initialLoad = false
                        
                        self.indicator.stopAnimating()
                        
                        UIView.animateWithDuration(1.0, animations: { () -> Void in
                            self.blackBackgroundView!.alpha = 0.0
                            self.blurView!.alpha = 0.0
                            self.blurView!.removeFromSuperview()
                        })
                    }
                })
            }
        }
    }
    
    func alertUserOfNoInternetConnection()
    {
        if #available(iOS 8.0, *) {
            let alert:UIAlertController = UIAlertController(title: "Internet Connectivity Issues", message: "Check your internet connection.", preferredStyle: UIAlertControllerStyle.Alert)
            let action:UIAlertAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(action)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else {
            // Fallback on earlier versions
            let alert:UIAlertView = UIAlertView(title: "Internet Connectivity Issues", message: "Check your internet connection.", delegate: nil, cancelButtonTitle: "Ok")
            alert.show()
        }
    }
    
    // MARK: Parking Polulation Submission
    func alertView(alertView: DTAlertView!, clickedButtonAtIndex buttonIndex: Int)
    {
        if buttonIndex == 1 // So submit button was pressed on the alert
        {
            let vote:Int = (Int)(100 * alertView.slider.value)
            DatabaseExchange.sendVote(forZone: self.zoneForRating!.id!, withVote: vote)
        }
    }
    
    func displayAlertForZone(zone:ZonePolygon)
    {
        self.zoneForRating = zone
        self.populationAlert!.show()
    }
    
    // MARK: Parking
    @IBAction func parkButtonPressed(sender: UIBarButtonItem)
    {
        if sender.title! == "Park"
        {
            sender.title! = "Unpark"
            self.mapView!.parkCar()
        } else
        {
            sender.title! = "Park"
            self.mapView.unParkCar()
        }
    }
    
}
