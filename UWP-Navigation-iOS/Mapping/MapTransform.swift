//
//  MapTransform.swift
//  UWP-Navigation-iOS
//
//  Created by Kyle Zawacki on 6/29/15.
//  Copyright © 2015 App Factory. All rights reserved.
//

import UIKit

class MapTransform: MapObject, GMSMapViewDelegate
{
    // MARK: Properties
    var map:GMSMapView?
    var polygonList:[ZonePolygon]?
    
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
        self.polygonList = polyfactory.polygons
        
        for zonePoly:ZonePolygon in self.polygonList!
        {
            zonePoly.polygon!.strokeColor = UIColor.blackColor()
            zonePoly.polygon!.map = self.map
            
            print(zonePoly.id!)
        }
    }
    
    // MARK: Map Interaction
    func mapView(mapView: GMSMapView!, didTapAtCoordinate coordinate: CLLocationCoordinate2D)
    {
        let zoneTapped:ZonePolygon? = getZoneTapped(withPoint: coordinate)
        
        if let zone = zoneTapped
        {
            print(zone.id!)
        } else
        {
            print("Nothing")
        }
    }
    
    func getZoneTapped(withPoint point:CLLocationCoordinate2D) -> ZonePolygon?
    {
        for polygon:ZonePolygon in self.polygonList!
        {
            if( pointInPolygon(withPoint: point, andPolygon: polygon.polygon!))
            {
                return polygon
            }
        }
        
        return nil
    }
    
}
