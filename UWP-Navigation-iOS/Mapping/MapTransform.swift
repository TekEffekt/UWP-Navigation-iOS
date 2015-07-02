//
//  MapTransform.swift
//  UWP-Navigation-iOS
//
//  Created by Kyle Zawacki on 6/29/15.
//  Copyright © 2015 App Factory. All rights reserved.
//

import UIKit

class MapTransform: MapObject
{
    // MARK: Properties
    var map:GMSMapView?
    
    // MARK: Map Initialization
    func setupMap()
    {
        let camera:GMSCameraPosition = GMSCameraPosition.cameraWithLatitude(Constants.DEFAULT_CAMERA_LAT, longitude: Constants.DEFAULT_CAMERA_LON, zoom: 17)
        
        self.map = GMSMapView.mapWithFrame(self.frame, camera: camera)
        self.addSubview(self.map!)
        
        buildPolymap()
    }
    
    func buildPolymap()
    {
        let polyfactory:Polyfactory = Polyfactory()
        let polygonList:[ZonePolygon] = polyfactory.polygons
        
        for zonePoly:ZonePolygon in polygonList
        {
            zonePoly.polygon!.strokeColor = UIColor.blackColor()
            zonePoly.polygon!.map = self.map
            
            print(zonePoly.id!)
        }
    }
    
}
