//
//  ZonePolygon.swift
//  UWP-Navigation-iOS
//
//  Created by Kyle Zawacki on 6/30/15.
//  Copyright © 2015 App Factory. All rights reserved.
//

import UIKit

class ZonePolygon
{
    var id:String?
    var polygon:GMSPolygon?
    
    init(withID id:String, andPolygon polygon:GMSPolygon)
    {
        self.id = id
        self.polygon = polygon
    }
}
