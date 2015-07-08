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

    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        self.populationAlert = DTAlertView(title: "How full is this zone?", delegate: self, cancelButtonTitle: "Cancel", positiveButtonTitle: "Submit")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.mapView.setupMapWithParent(self) // Needs to be called after contraints have been layed out, which is why the call is here
        getFullnessOfZones(withZones: Polyfactory().parkingZones)
    }
    
    // MARK: Networking
    func getFullnessOfZones(withZones zones:[ZonePolygon])
    {
        let queue = NSOperationQueue()
        
        queue.addOperationWithBlock { () -> Void in
            var fullnessStrings:[String] = [String]()
            
            for zone:ZonePolygon in zones
            {
                fullnessStrings.append(DatabaseExchange.getFullness(forZone: zone.id!))
            }
            
            print(fullnessStrings)
            
            NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                self.mapView.colorMap(withFullnessAndConfidenceLevels: fullnessStrings)
            })
        }
    }
    
    func alertView(alertView: DTAlertView!, clickedButtonAtIndex buttonIndex: Int)
    {
        if buttonIndex == 1 // So submit button was pressed on the alert
        {
            let vote:Int = (Int)(100 * alertView.slider.value)
            DatabaseExchange.sendVote(forZone: self.zoneForRating!.id!, withVote: vote)
        }
    }
    
    // Parking Polulation Submission
    func displayAlertForZone(zone:ZonePolygon)
    {
        self.zoneForRating = zone
        self.populationAlert!.show()
    }
}
