//
//  MainViewController.swift
//  
//
//  Created by Kyle Zawacki on 6/29/15.
//
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var mapObject: MapTransform!
    var map2:GMSMapView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.mapObject.setupMap() // Needs to be called after contraints have been layed out, which is why the call is here
    }
}
