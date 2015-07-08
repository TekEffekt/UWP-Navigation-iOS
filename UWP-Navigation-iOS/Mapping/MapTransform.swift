//
//  MapTransform.swift
//  UWP-Navigation-iOS
//
//  Created by Kyle Zawacki on 6/29/15.
//  Copyright © 2015 App Factory. All rights reserved.
//
//  This class contains all of the important logic for dealing with the Google Map view, from populating the map with all of the zone polygon overlays
// to recognizing and responding to touches on said overlays or on Parkside buildings.

import UIKit

class MapTransform: MapObject, GMSMapViewDelegate, CLLocationManagerDelegate
{
    // MARK: Properties
    var map:GMSMapView?
    var parkingZoneList:[ZonePolygon]?
    var buidlingZoneList:[ZonePolygon]?
    var passedViewController:MainViewController?
    var locationManager:CLLocationManager?
    var usersCurrentLocation:CLLocationCoordinate2D?
    var parkMarker:GMSMarker?
    
    // MARK: Map Initialization
    func setupMapWithParent(controller:MainViewController)
    {
        let camera:GMSCameraPosition = GMSCameraPosition.cameraWithLatitude(Constants.DEFAULT_CAMERA_LAT, longitude: Constants.DEFAULT_CAMERA_LON, zoom: 17)
        
        self.map = GMSMapView.mapWithFrame(self.frame, camera: camera)
        self.map!.myLocationEnabled = true
        self.map!.delegate = self
        self.addSubview(self.map!)
        self.passedViewController = controller
        setupLocationTracking()
        
        buildPolymap()
    }
    
    func buildPolymap()
    {
        let polyfactory:Polyfactory = Polyfactory()
        self.parkingZoneList = polyfactory.parkingZones
        self.buidlingZoneList = polyfactory.buildingZones
        
        for zonePoly:ZonePolygon in self.parkingZoneList!
        {
            zonePoly.polygon!.strokeColor = UIColor.blackColor()
            zonePoly.polygon!.map = self.map
            
        }
        
        for buildingPoly:ZonePolygon in self.buidlingZoneList!
        {
            buildingPoly.polygon!.fillColor = UIColor.clearColor()
            buildingPoly.polygon!.map = self.map
        }
    }
    
    func setupLocationTracking()
    {
        self.locationManager = CLLocationManager()
        
        if #available(iOS 8.0, *) {
            self.locationManager!.requestAlwaysAuthorization()
        } else {
            // Fallback on earlier versions
        }
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager!.delegate = self
            locationManager!.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager!.startUpdatingLocation()
        }
    }
    
    func colorMap(withFullnessAndConfidenceLevels fullnessConfidenceStrings:[String])
    {
        for(var i = 0; i < fullnessConfidenceStrings.count; i++)
        {
            let levels = fullnessConfidenceStrings[i]
            let fullnessString:String = levels.componentsSeparatedByString(",")[0]
            let confidenceString:String = levels.componentsSeparatedByString(",")[1]
            
            let fullness:Double = Double(fullnessString)!
            let confidence:Double = Double(confidenceString)!
            
            if let zone:ZonePolygon = self.parkingZoneList![i]
            {
                var color:UIColor = UIColor()
                if (fullness > 66) {
                    color = UIColor.redColor()
                }
                else if (fullness >= 33 && fullness <= 66) {
                    color = UIColor.yellowColor()
                }
                else if(fullness < 33 && fullness != -1) {
                    color = UIColor.greenColor()
                } else if(fullness == -1)
                {
                    color = UIColor.darkGrayColor()
                }
                
                color = color.colorWithAlphaComponent(CGFloat(confidence / 100))
                
                zone.polygon!.fillColor = color
            }
        }
    }
    
    // MARK: Map Interaction
    func mapView(mapView: GMSMapView!, didTapOverlay overlay: GMSOverlay!)
    {
        let zoneTapped:ZonePolygon? = getZoneTapped(withOverlayTapped: overlay)
        
        if let zone = zoneTapped
        {
            print(zone.id!)
            self.passedViewController?.displayAlertForZone(zone)
        } else
        {
            print("Nothing")
        }
    }
    
    func getZoneTapped(withOverlayTapped overlay:GMSOverlay) -> ZonePolygon?
    {
        for zone:ZonePolygon in self.parkingZoneList!
        {
            if(zone.polygon == overlay)
            {
                return zone
            }
        }
        
        for zone:ZonePolygon in self.buidlingZoneList!
        {
            if(zone.polygon == overlay)
            {
                return zone
            }
        }
        
        return nil
    }
    
    // MARK: Parking and User's Location
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.usersCurrentLocation = locations[0].coordinate
    }
    
    func parkCar()
    {
        self.parkMarker = GMSMarker(position: self.usersCurrentLocation!)
        self.parkMarker!.icon = UIImage(named: "Parking")
        self.parkMarker!.flat = true
        self.parkMarker!.map = map
    }
    
    func unParkCar()
    {
        self.parkMarker!.map = nil
    }
}
