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

class MapTransform: MapObject, GMSMapViewDelegate
{
    // MARK: Properties
    var map:GMSMapView?
    var parkingZoneList:[ZonePolygon]?
    var buidlingZoneList:[ZonePolygon]?
    
    // MARK: Map Initialization
    func setupMap()
    {
        let camera:GMSCameraPosition = GMSCameraPosition.cameraWithLatitude(Constants.DEFAULT_CAMERA_LAT, longitude: Constants.DEFAULT_CAMERA_LON, zoom: 17)
        
        self.map = GMSMapView.mapWithFrame(self.frame, camera: camera)
        self.map!.delegate = self
        self.addSubview(self.map!)
        
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
            
            print(zonePoly.id!)
        }
        
        for buildingPoly:ZonePolygon in self.buidlingZoneList!
        {
            buildingPoly.polygon!.fillColor = UIColor.clearColor()
            buildingPoly.polygon!.map = self.map
            print(buildingPoly.id!)
        }
    }
    
    // MARK: Map Interaction
    func mapView(mapView: GMSMapView!, didTapOverlay overlay: GMSOverlay!)
    {
        let zoneTapped:ZonePolygon? = getZoneTapped(withOverlayTapped: overlay)
        
        if let zone = zoneTapped
        {
            print(zone.id!)
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
    
}
