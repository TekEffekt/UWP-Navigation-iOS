//
//  PolyFactory.swift
//  UWP-Navigation-iOS
//
//  Created by Kyle Zawacki on 6/30/15.
//  Copyright © 2015 App Factory. All rights reserved.
//
//  Creates the ZonePolygon objects for every parking lot zone and UW Parkside buildings.

import UIKit

class Polyfactory
{
    // MARK: COORDINATES
    
    //Talent (T) Coordinates Begin
    let T_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.649226, longitude: -87.848384)
    let T_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.649222, longitude: -87.847613)
    let T_ROW_1_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.649190, longitude: -87.846760)
    
    let T_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648808, longitude: -87.848403)
    let T_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648801, longitude: -87.847605)
    let T_ROW_2_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648785, longitude: -87.846757)
    
    let T_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648366, longitude: -87.848391)
    let T_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648358, longitude: -87.847644)
    let T_ROW_3_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648333, longitude: -87.846739)
    
    let T_ROW_4_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647981, longitude: -87.848403)
    let T_ROW_4_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647946, longitude: -87.847631)
    let T_ROW_4_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647981, longitude: -87.846827)
    //Talent (T) Coordinates End
    
    //Student Center (A) Coordinates Begin
    let A_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.649125, longitude: -87.853941)
    
    let A_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648511, longitude: -87.854008)
    let A_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648516, longitude: -87.853350)
    let A_ROW_2_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648455, longitude: -87.852173)
    
    let A_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648095, longitude: -87.854203)
    let A_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648077, longitude: -87.853363)
    let A_ROW_3_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648071, longitude: -87.852174)
    
    let A_ROW_4_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647685, longitude: -87.854255)
    let A_ROW_4_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647670, longitude: -87.853375)
    let A_ROW_4_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647653, longitude: -87.852202)
    
    let A_ROW_5_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647479, longitude: -87.854288)
    let A_ROW_5_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647420, longitude: -87.853387)
    let A_ROW_5_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647421, longitude: -87.852199)
    //Student Center (A) Coordinates End

    //Rita Main (B) Coordinates Begin
    let B_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645479, longitude: -87.859190)
    let B_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645479, longitude: -87.858650)
    let B_ROW_1_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645479, longitude: -87.858105)
    let B_ROW_1_POINT_4:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645446, longitude: -87.857409)
    
    let B_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645105, longitude: -87.859239)
    let B_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645094, longitude: -87.858665)
    let B_ROW_2_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645089, longitude: -87.858115)
    let B_ROW_2_POINT_4:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645065, longitude: -87.857405)

    let B_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644728, longitude: -87.859244)
    let B_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644719, longitude: -87.858675)
    let B_ROW_3_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644705, longitude: -87.858349)
    let B_ROW_3_POINT_4:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644705, longitude: -87.858128)
    let B_ROW_3_POINT_5:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644671, longitude: -87.857422)

    let B_ROW_4_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644529, longitude: -87.859247)
    let B_ROW_4_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644486, longitude: -87.858366)
    let B_ROW_4_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644463, longitude: -87.857418)
    //Rita Main (B) Coordinates End
    
    
    
    //Rita Overflow (C) Coordinates Begin
    let C_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644346, longitude: -87.858951)
    let C_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644347, longitude: -87.858080)
    let C_ROW_1_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644342, longitude: -87.857582)
    
    let C_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643981, longitude: -87.858963)
    let C_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643957, longitude: -87.858093)
    let C_ROW_2_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643940, longitude: -87.857292)
    
    let C_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643708, longitude: -87.85871)
    let C_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643674, longitude: -87.858041)
    let C_ROW_3_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643665, longitude: -87.857145)
    
    let C_ROW_4_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643407, longitude: -87.858041)
    let C_ROW_4_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643386, longitude: -87.857100)
    //Rita Overflow (C) Coordinates End
    
    //SAC Main (D) Coordinates Begin
    let D_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641491, longitude: -87.856943)
    let D_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641751, longitude: -87.856552)
    let D_ROW_1_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641906, longitude: -87.856310)
    let D_ROW_1_POINT_4:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641875, longitude: -87.855965)
    
    let D_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641251, longitude: -87.856630)
    let D_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641507, longitude: -87.856232)
    let D_ROW_2_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641748, longitude: -87.855838)
    
    let D_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.640997, longitude: -87.856339)
    let D_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641208, longitude: -87.856019)
    let D_ROW_3_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641273, longitude: -87.855944)
    let D_ROW_3_POINT_4:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641413, longitude: -87.855725)
    let D_ROW_3_POINT_5:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641519, longitude: -87.855567)
    
    let D_ROW_4_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.640796, longitude: -87.856064)
    let D_ROW_4_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.640992, longitude: -87.855772)
    let D_ROW_4_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.641187, longitude: -87.855450)

    let D_ROW_5_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.640517, longitude: -87.855700)
    let D_ROW_5_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.640719, longitude: -87.855413)
    let D_ROW_5_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.640719, longitude: -87.855413)

    //SAC Main (D) Coordinates End
    
    //SAC Overflow (E) Coordinates Begin
    let E_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643047, longitude: -87.858129)
    let E_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643041, longitude: -87.857582)

    let E_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.642373, longitude: -87.858154)
    let E_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.642354, longitude: -87.857605)
    //SAC Overflow (E) Coordinates End
    
    //Tallent Hall Outline Coordinates Begin
    let TH_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647715, longitude: -87.847784)
    let TH_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647706, longitude: -87.847213)
    let TH_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647280, longitude: -87.847216)
    let TH_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647292, longitude: -87.847803)
    //Tallent Hall Outline Coordinates Ends
    
    //SHCC Outline Coordinates Begin
    let SHCC_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648067, longitude: -87.846325)
    let SHCC_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648059, longitude: -87.845912)
    let SHCC_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647848, longitude: -87.846329)
    let SHCC_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647850, longitude: -87.845916)
    //SHCC Outline Coordinates Ends
    
    //Student Center Outline Coordinates Begin
    let SC_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648062, longitude: -87.855849)
    let SC_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.648048, longitude: -87.854766)
    let SC_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647773, longitude: -87.854766)
    let SC_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647765, longitude: -87.85448)
    let SC_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647343, longitude: -87.855845)
    let SC_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647331, longitude: -87.854499)
    //Student Center Outline Coordinates End

    //Molinaro Hall Outline Coordinates Begin
    let MOLN_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647207, longitude: -87.856888)
    let MOLN_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647195, longitude: -87.855965)
    let MOLN_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647017, longitude: -87.857083)
    let MOLN_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647023, longitude: -87.856901)
    let MOLN_ROW_2_POINT_3:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.647003, longitude: -87.854994)
    let MOLN_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646816, longitude: -87.85708)
    let MOLN_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646773, longitude: -87.855586)
    let MOLN_ROW_4_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646647, longitude: -87.855586)
    let MOLN_ROW_4_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646651, longitude: -87.855028)
    //Molinaro Hall Outline Coordinates End
    
    //Greenquist Hall Outline Coordinates Begin
    let GRNQ_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646652, longitude: -87.855866)
    let GRNQ_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646654, longitude: -87.8549)
    let GRNQ_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646244, longitude: -87.855216)
    let GRNQ_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.646254, longitude: -87.854913)
    let GRNQ_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.64578, longitude: -87.855897)
    let GRNQ_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.6458, longitude: -87.855234)
    //Greenquist Hall Outline Coordinates End
    
    //Wyllie Hall Outline Coordinates Begin
    let WHYL_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645925, longitude: -87.855242)
    let WHYL_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645923, longitude: -87.854458)
    let WHYL_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645798, longitude: -87.855591)
    let WHYL_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.6458, longitude: -87.855227)
    let WHYL_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644963, longitude: -87.855573)
    let WHYL_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644967, longitude: -87.854523)
    //Wyllie Hall Outline Coordinates End
    
    //Rita Hall Outline Coordinates Begin
    let RITA_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645668, longitude: -87.85703)
    let RITA_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645659, longitude: -87.856179)
    let RITA_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645353, longitude: -87.856202)
    let RITA_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.645345, longitude: -87.855583)
    let RITA_ROW_3_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644846, longitude: -87.85626)
    let RITA_ROW_3_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644853, longitude: -87.8556)
    let RITA_ROW_4_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644567, longitude: -87.857059)
    let RITA_ROW_4_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.644555, longitude: -87.856259)
    //Rita Hall Outline Coordinates End
    
    //SAC Outline Coordinates Begin
    let SAC_ROW_1_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643081, longitude: -87.857589)
    let SAC_ROW_1_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.643051, longitude: -87.855677)
    let SAC_ROW_2_POINT_1:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.642096, longitude: -87.857624)
    let SAC_ROW_2_POINT_2:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 42.642046, longitude: -87.855669)
    //SAC Outline Coordinates End
    
    // MARK: POLYGON PATHS
    
    // Talent (T)
    let T_ZONE_1_PATH:GMSMutablePath = GMSMutablePath()
    let T_ZONE_2_PATH:GMSMutablePath = GMSMutablePath()
    let T_ZONE_3_PATH:GMSMutablePath = GMSMutablePath()
    let T_ZONE_4_PATH:GMSMutablePath = GMSMutablePath()
    let T_ZONE_5_PATH:GMSMutablePath = GMSMutablePath()
    let T_ZONE_6_PATH:GMSMutablePath = GMSMutablePath()
    
    // Student Center (A)
    let A_ZONE_1_PATH:GMSMutablePath = GMSMutablePath()
    let A_ZONE_2_PATH:GMSMutablePath = GMSMutablePath()
    let A_ZONE_3_PATH:GMSMutablePath = GMSMutablePath()
    let A_ZONE_4_PATH:GMSMutablePath = GMSMutablePath()
    let A_ZONE_5_PATH:GMSMutablePath = GMSMutablePath()
    let A_ZONE_6_PATH:GMSMutablePath = GMSMutablePath()
    let A_ZONE_7_PATH:GMSMutablePath = GMSMutablePath()
    
    //Rita Main (B)
    let B_ZONE_1_PATH:GMSMutablePath = GMSMutablePath()
    let B_ZONE_2_PATH:GMSMutablePath = GMSMutablePath()
    let B_ZONE_3_PATH:GMSMutablePath = GMSMutablePath()
    let B_ZONE_4_PATH:GMSMutablePath = GMSMutablePath()
    let B_ZONE_5_PATH:GMSMutablePath = GMSMutablePath()
    let B_ZONE_6_PATH:GMSMutablePath = GMSMutablePath()
    let B_ZONE_7_PATH:GMSMutablePath = GMSMutablePath()
    let B_ZONE_8_PATH:GMSMutablePath = GMSMutablePath()
    
    //Rita Overflow (C)
    let C_ZONE_1_PATH:GMSMutablePath = GMSMutablePath()
    let C_ZONE_2_PATH:GMSMutablePath = GMSMutablePath()
    let C_ZONE_3_PATH:GMSMutablePath = GMSMutablePath()
    let C_ZONE_4_PATH:GMSMutablePath = GMSMutablePath()
    let C_ZONE_5_PATH:GMSMutablePath = GMSMutablePath()
    
    //SAC Main (D)
    let D_ZONE_1_PATH:GMSMutablePath = GMSMutablePath()
    let D_ZONE_2_PATH:GMSMutablePath = GMSMutablePath()
    let D_ZONE_3_PATH:GMSMutablePath = GMSMutablePath()
    let D_ZONE_4_PATH:GMSMutablePath = GMSMutablePath()
    let D_ZONE_5_PATH:GMSMutablePath = GMSMutablePath()
    let D_ZONE_6_PATH:GMSMutablePath = GMSMutablePath()
    let D_ZONE_7_PATH:GMSMutablePath = GMSMutablePath()
    let D_ZONE_8_PATH:GMSMutablePath = GMSMutablePath()
    
    //SAC Overflow (E)
    let E_ZONE_1_PATH:GMSMutablePath = GMSMutablePath()
    
    // Tallent Hall building
    let TALLENT_OUTLINE:GMSMutablePath = GMSMutablePath()
    
    // SHCC building
    let SHCC_OUTLINE:GMSMutablePath = GMSMutablePath()
    
    // Student Center building
    let  SC_OUTLINE:GMSMutablePath = GMSMutablePath()
    
    // Molinaro Hall building
    let MOLN_OUTLINE:GMSMutablePath = GMSMutablePath()
    
    // Greenquist Hall building
    let GRNQ_OUTLINE:GMSMutablePath = GMSMutablePath()
    
    // Wyllie Hall building
    let  WHYL_OUTLINE:GMSMutablePath = GMSMutablePath()
    
    // Rita Hall building
    let  RITA_OUTLINE:GMSMutablePath = GMSMutablePath()
    
    // SAC building
    let SAC_OUTLINE:GMSMutablePath = GMSMutablePath()

    // MARK: parkingZones
    
    // Talent (T)
    let T_ZONE_1:GMSPolygon?
    let T_ZONE_2:GMSPolygon?
    let T_ZONE_3:GMSPolygon?
    let T_ZONE_4:GMSPolygon?
    let T_ZONE_5:GMSPolygon?
    let T_ZONE_6:GMSPolygon?
    
    // Student Center (A)
    let A_ZONE_1:GMSPolygon?
    let A_ZONE_2:GMSPolygon?
    let A_ZONE_3:GMSPolygon?
    let A_ZONE_4:GMSPolygon?
    let A_ZONE_5:GMSPolygon?
    let A_ZONE_6:GMSPolygon?
    let A_ZONE_7:GMSPolygon?
    
    //Rita Main (B)
    let B_ZONE_1:GMSPolygon?
    let B_ZONE_2:GMSPolygon?
    let B_ZONE_3:GMSPolygon?
    let B_ZONE_4:GMSPolygon?
    let B_ZONE_5:GMSPolygon?
    let B_ZONE_6:GMSPolygon?
    let B_ZONE_7:GMSPolygon?
    let B_ZONE_8:GMSPolygon?
    
    //Rita Overflow (C)
    let C_ZONE_1:GMSPolygon?
    let C_ZONE_2:GMSPolygon?
    let C_ZONE_3:GMSPolygon?
    let C_ZONE_4:GMSPolygon?
    let C_ZONE_5:GMSPolygon?
    
    //SAC Main (D)
    let D_ZONE_1:GMSPolygon?
    let D_ZONE_2:GMSPolygon?
    let D_ZONE_3:GMSPolygon?
    let D_ZONE_4:GMSPolygon?
    let D_ZONE_5:GMSPolygon?
    let D_ZONE_6:GMSPolygon?
    let D_ZONE_7:GMSPolygon?
    let D_ZONE_8:GMSPolygon?
    
    //SAC Overflow (E)
    let E_ZONE_1:GMSPolygon?
    
    // Tallent Hall building
    let tallentZone:GMSPolygon?
    
    // SHCC building
    let shccZone:GMSPolygon?
    
    // Student Center building
    let studentCenterZone:GMSPolygon?
    
    // Molinaro Hall building
    let molinaroZone:GMSPolygon?
    
    // Greenquist Hall building
    let greenquistZone:GMSPolygon?
    
    // Wyllie Hall building
    let wyllieZone:GMSPolygon?
    
    // Rita Hall building
    let ritaZone:GMSPolygon?
    
    // SAC building
    let sacZone:GMSPolygon?

    // The array that stores all of the zones for the parkingZones and buildingZones. Each polygon can be obtained by a unique universal ID
    var parkingZones = [ZonePolygon]()
    var buildingZones = [ZonePolygon]()

    // MARK: Initialization
    init()
    {
        // Intitializes Talent(T) zone poylgons
        T_ZONE_1_PATH.addCoordinate(T_ROW_1_POINT_1)
        T_ZONE_1_PATH.addCoordinate(T_ROW_1_POINT_2)
        T_ZONE_1_PATH.addCoordinate(T_ROW_2_POINT_2)
        T_ZONE_1_PATH.addCoordinate(T_ROW_2_POINT_1)
        
        T_ZONE_2_PATH.addCoordinate(T_ROW_1_POINT_2)
        T_ZONE_2_PATH.addCoordinate(T_ROW_1_POINT_3)
        T_ZONE_2_PATH.addCoordinate(T_ROW_2_POINT_3)
        T_ZONE_2_PATH.addCoordinate(T_ROW_2_POINT_2)
        
        T_ZONE_3_PATH.addCoordinate(T_ROW_2_POINT_1)
        T_ZONE_3_PATH.addCoordinate(T_ROW_2_POINT_2)
        T_ZONE_3_PATH.addCoordinate(T_ROW_3_POINT_2)
        T_ZONE_3_PATH.addCoordinate(T_ROW_3_POINT_1)
        
        T_ZONE_4_PATH.addCoordinate(T_ROW_2_POINT_2)
        T_ZONE_4_PATH.addCoordinate(T_ROW_2_POINT_3)
        T_ZONE_4_PATH.addCoordinate(T_ROW_3_POINT_3)
        T_ZONE_4_PATH.addCoordinate(T_ROW_3_POINT_2)
        
        T_ZONE_5_PATH.addCoordinate(T_ROW_3_POINT_1)
        T_ZONE_5_PATH.addCoordinate(T_ROW_3_POINT_2)
        T_ZONE_5_PATH.addCoordinate(T_ROW_4_POINT_2)
        T_ZONE_5_PATH.addCoordinate(T_ROW_4_POINT_1)
        
        T_ZONE_6_PATH.addCoordinate(T_ROW_3_POINT_2)
        T_ZONE_6_PATH.addCoordinate(T_ROW_3_POINT_3)
        T_ZONE_6_PATH.addCoordinate(T_ROW_4_POINT_3)
        T_ZONE_6_PATH.addCoordinate(T_ROW_4_POINT_2)
        
        T_ZONE_1 = GMSPolygon(path: T_ZONE_1_PATH)
        T_ZONE_2 = GMSPolygon(path: T_ZONE_2_PATH)
        T_ZONE_3 = GMSPolygon(path: T_ZONE_3_PATH)
        T_ZONE_4 = GMSPolygon(path: T_ZONE_4_PATH)
        T_ZONE_5 = GMSPolygon(path: T_ZONE_5_PATH)
        T_ZONE_6 = GMSPolygon(path: T_ZONE_6_PATH)
        
        parkingZones.append( ZonePolygon(withID: Constants.TALLENT_1_ID, andPolygon: T_ZONE_1!))
        parkingZones.append( ZonePolygon(withID: Constants.TALLENT_2_ID, andPolygon: T_ZONE_2!))
        parkingZones.append( ZonePolygon(withID: Constants.TALLENT_3_ID, andPolygon: T_ZONE_3!))
        parkingZones.append( ZonePolygon(withID: Constants.TALLENT_4_ID, andPolygon: T_ZONE_4!))
        parkingZones.append( ZonePolygon(withID: Constants.TALLENT_5_ID, andPolygon: T_ZONE_5!))
        parkingZones.append( ZonePolygon(withID: Constants.TALLENT_6_ID, andPolygon: T_ZONE_6!))
        
        // Intitializes Student Center (A) zone poylgons
        A_ZONE_1_PATH.addCoordinate(A_ROW_1_POINT_1)
        A_ZONE_1_PATH.addCoordinate(A_ROW_2_POINT_3)
        A_ZONE_1_PATH.addCoordinate(A_ROW_2_POINT_2)
        A_ZONE_1_PATH.addCoordinate(A_ROW_2_POINT_1)
        
        A_ZONE_2_PATH.addCoordinate(A_ROW_2_POINT_1)
        A_ZONE_2_PATH.addCoordinate(A_ROW_2_POINT_2)
        A_ZONE_2_PATH.addCoordinate(A_ROW_3_POINT_2)
        A_ZONE_2_PATH.addCoordinate(A_ROW_3_POINT_1)
        
        A_ZONE_3_PATH.addCoordinate(A_ROW_2_POINT_2)
        A_ZONE_3_PATH.addCoordinate(A_ROW_2_POINT_3)
        A_ZONE_3_PATH.addCoordinate(A_ROW_3_POINT_3)
        A_ZONE_3_PATH.addCoordinate(A_ROW_3_POINT_2)
        
        A_ZONE_4_PATH.addCoordinate(A_ROW_3_POINT_1)
        A_ZONE_4_PATH.addCoordinate(A_ROW_3_POINT_2)
        A_ZONE_4_PATH.addCoordinate(A_ROW_4_POINT_2)
        A_ZONE_4_PATH.addCoordinate(A_ROW_4_POINT_1)
        
        A_ZONE_5_PATH.addCoordinate(A_ROW_3_POINT_2)
        A_ZONE_5_PATH.addCoordinate(A_ROW_3_POINT_3)
        A_ZONE_5_PATH.addCoordinate(A_ROW_4_POINT_3)
        A_ZONE_5_PATH.addCoordinate(A_ROW_4_POINT_2)
        
        A_ZONE_6_PATH.addCoordinate(A_ROW_4_POINT_1)
        A_ZONE_6_PATH.addCoordinate(A_ROW_4_POINT_2)
        A_ZONE_6_PATH.addCoordinate(A_ROW_5_POINT_2)
        A_ZONE_6_PATH.addCoordinate(A_ROW_5_POINT_1)
        
        A_ZONE_7_PATH.addCoordinate(A_ROW_4_POINT_2)
        A_ZONE_7_PATH.addCoordinate(A_ROW_4_POINT_3)
        A_ZONE_7_PATH.addCoordinate(A_ROW_5_POINT_3)
        A_ZONE_7_PATH.addCoordinate(A_ROW_5_POINT_2)
        
        A_ZONE_1 = GMSPolygon(path: A_ZONE_1_PATH)
        A_ZONE_2 = GMSPolygon(path: A_ZONE_2_PATH)
        A_ZONE_3 = GMSPolygon(path: A_ZONE_3_PATH)
        A_ZONE_4 = GMSPolygon(path: A_ZONE_4_PATH)
        A_ZONE_5 = GMSPolygon(path: A_ZONE_5_PATH)
        A_ZONE_6 = GMSPolygon(path: A_ZONE_6_PATH)
        A_ZONE_7 = GMSPolygon(path: A_ZONE_7_PATH)
        
        parkingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER_1_ID, andPolygon: A_ZONE_1!))
        parkingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER_2_ID, andPolygon: A_ZONE_2!))
        parkingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER_3_ID, andPolygon: A_ZONE_3!))
        parkingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER_4_ID, andPolygon: A_ZONE_4!))
        parkingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER_5_ID, andPolygon: A_ZONE_5!))
        parkingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER_6_ID, andPolygon: A_ZONE_6!))
        parkingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER_7_ID, andPolygon: A_ZONE_7!))
        
        // Intitializes Rita Main (B) zone poylgons
        B_ZONE_1_PATH.addCoordinate(B_ROW_1_POINT_1)
        B_ZONE_1_PATH.addCoordinate(B_ROW_1_POINT_2)
        B_ZONE_1_PATH.addCoordinate(B_ROW_2_POINT_2)
        B_ZONE_1_PATH.addCoordinate(B_ROW_2_POINT_1)
        
        B_ZONE_2_PATH.addCoordinate(B_ROW_1_POINT_2)
        B_ZONE_2_PATH.addCoordinate(B_ROW_1_POINT_3)
        B_ZONE_2_PATH.addCoordinate(B_ROW_2_POINT_3)
        B_ZONE_2_PATH.addCoordinate(B_ROW_2_POINT_2)
        
        B_ZONE_3_PATH.addCoordinate(B_ROW_1_POINT_3)
        B_ZONE_3_PATH.addCoordinate(B_ROW_1_POINT_4)
        B_ZONE_3_PATH.addCoordinate(B_ROW_2_POINT_4)
        B_ZONE_3_PATH.addCoordinate(B_ROW_2_POINT_3)
        
        B_ZONE_4_PATH.addCoordinate(B_ROW_2_POINT_1)
        B_ZONE_4_PATH.addCoordinate(B_ROW_2_POINT_2)
        B_ZONE_4_PATH.addCoordinate(B_ROW_3_POINT_2)
        B_ZONE_4_PATH.addCoordinate(B_ROW_3_POINT_1)
        
        B_ZONE_5_PATH.addCoordinate(B_ROW_2_POINT_2)
        B_ZONE_5_PATH.addCoordinate(B_ROW_2_POINT_3)
        B_ZONE_5_PATH.addCoordinate(B_ROW_3_POINT_4)
        B_ZONE_5_PATH.addCoordinate(B_ROW_3_POINT_2)
        
        B_ZONE_6_PATH.addCoordinate(B_ROW_2_POINT_3)
        B_ZONE_6_PATH.addCoordinate(B_ROW_2_POINT_4)
        B_ZONE_6_PATH.addCoordinate(B_ROW_3_POINT_5)
        B_ZONE_6_PATH.addCoordinate(B_ROW_3_POINT_4)
        
        B_ZONE_7_PATH.addCoordinate(B_ROW_3_POINT_1)
        B_ZONE_7_PATH.addCoordinate(B_ROW_3_POINT_3)
        B_ZONE_7_PATH.addCoordinate(B_ROW_4_POINT_2)
        B_ZONE_7_PATH.addCoordinate(B_ROW_4_POINT_1)
        
        B_ZONE_8_PATH.addCoordinate(B_ROW_3_POINT_3)
        B_ZONE_8_PATH.addCoordinate(B_ROW_3_POINT_5)
        B_ZONE_8_PATH.addCoordinate(B_ROW_4_POINT_3)
        B_ZONE_8_PATH.addCoordinate(B_ROW_4_POINT_2)
        
        B_ZONE_1 = GMSPolygon(path: B_ZONE_1_PATH)
        B_ZONE_2 = GMSPolygon(path: B_ZONE_2_PATH)
        B_ZONE_3 = GMSPolygon(path: B_ZONE_3_PATH)
        B_ZONE_4 = GMSPolygon(path: B_ZONE_4_PATH)
        B_ZONE_5 = GMSPolygon(path: B_ZONE_5_PATH)
        B_ZONE_6 = GMSPolygon(path: B_ZONE_6_PATH)
        B_ZONE_7 = GMSPolygon(path: B_ZONE_7_PATH)
        B_ZONE_8 = GMSPolygon(path: B_ZONE_8_PATH)
        
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_1_ID, andPolygon: B_ZONE_1!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_2_ID, andPolygon: B_ZONE_2!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_3_ID, andPolygon: B_ZONE_3!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_4_ID, andPolygon: B_ZONE_4!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_5_ID, andPolygon: B_ZONE_5!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_6_ID, andPolygon: B_ZONE_6!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_7_ID, andPolygon: B_ZONE_7!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_MAIN_8_ID, andPolygon: B_ZONE_8!))
        
        // Intitializes Rita Overflow (C) zone poylgons
        C_ZONE_1_PATH.addCoordinate(C_ROW_1_POINT_1)
        C_ZONE_1_PATH.addCoordinate(C_ROW_1_POINT_2)
        C_ZONE_1_PATH.addCoordinate(C_ROW_2_POINT_2)
        C_ZONE_1_PATH.addCoordinate(C_ROW_2_POINT_1)
        
        C_ZONE_2_PATH.addCoordinate(C_ROW_1_POINT_2)
        C_ZONE_2_PATH.addCoordinate(C_ROW_1_POINT_3)
        C_ZONE_2_PATH.addCoordinate(C_ROW_2_POINT_3)
        C_ZONE_2_PATH.addCoordinate(C_ROW_2_POINT_2)
        
        C_ZONE_3_PATH.addCoordinate(C_ROW_2_POINT_1)
        C_ZONE_3_PATH.addCoordinate(C_ROW_2_POINT_2)
        C_ZONE_3_PATH.addCoordinate(C_ROW_3_POINT_2)
        C_ZONE_3_PATH.addCoordinate(C_ROW_4_POINT_1)
        C_ZONE_3_PATH.addCoordinate(C_ROW_3_POINT_1)
        
        C_ZONE_4_PATH.addCoordinate(C_ROW_2_POINT_2)
        C_ZONE_4_PATH.addCoordinate(C_ROW_2_POINT_3)
        C_ZONE_4_PATH.addCoordinate(C_ROW_3_POINT_3)
        C_ZONE_4_PATH.addCoordinate(C_ROW_3_POINT_2)
        
        C_ZONE_5_PATH.addCoordinate(C_ROW_3_POINT_2)
        C_ZONE_5_PATH.addCoordinate(C_ROW_3_POINT_3)
        C_ZONE_5_PATH.addCoordinate(C_ROW_4_POINT_2)
        C_ZONE_5_PATH.addCoordinate(C_ROW_4_POINT_1)
        
        C_ZONE_1 = GMSPolygon(path: C_ZONE_1_PATH)
        C_ZONE_2 = GMSPolygon(path: C_ZONE_2_PATH)
        C_ZONE_3 = GMSPolygon(path: C_ZONE_3_PATH)
        C_ZONE_4 = GMSPolygon(path: C_ZONE_4_PATH)
        C_ZONE_5 = GMSPolygon(path: C_ZONE_5_PATH)
        
        parkingZones.append( ZonePolygon(withID: Constants.RITA_OVERFLOW_1_ID, andPolygon: C_ZONE_1!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_OVERFLOW_2_ID, andPolygon: C_ZONE_2!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_OVERFLOW_3_ID, andPolygon: C_ZONE_3!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_OVERFLOW_4_ID, andPolygon: C_ZONE_4!))
        parkingZones.append( ZonePolygon(withID: Constants.RITA_OVERFLOW_5_ID, andPolygon: C_ZONE_5!))
        
        // Intitializes SAC Main (D) zone poylgons
        D_ZONE_1_PATH.addCoordinate(D_ROW_1_POINT_1)
        D_ZONE_1_PATH.addCoordinate(D_ROW_1_POINT_2)
        D_ZONE_1_PATH.addCoordinate(D_ROW_2_POINT_2)
        D_ZONE_1_PATH.addCoordinate(D_ROW_2_POINT_1)
        
        D_ZONE_2_PATH.addCoordinate(D_ROW_1_POINT_2)
        D_ZONE_2_PATH.addCoordinate(D_ROW_1_POINT_3)
        D_ZONE_2_PATH.addCoordinate(D_ROW_1_POINT_4)
        D_ZONE_2_PATH.addCoordinate(D_ROW_2_POINT_3)
        D_ZONE_2_PATH.addCoordinate(D_ROW_2_POINT_2)
        
        D_ZONE_3_PATH.addCoordinate(D_ROW_2_POINT_1)
        D_ZONE_3_PATH.addCoordinate(D_ROW_2_POINT_2)
        D_ZONE_3_PATH.addCoordinate(D_ROW_3_POINT_3)
        D_ZONE_3_PATH.addCoordinate(D_ROW_3_POINT_2)
        D_ZONE_3_PATH.addCoordinate(D_ROW_3_POINT_1)

        D_ZONE_4_PATH.addCoordinate(D_ROW_2_POINT_2)
        D_ZONE_4_PATH.addCoordinate(D_ROW_2_POINT_3)
        D_ZONE_4_PATH.addCoordinate(D_ROW_3_POINT_5)
        D_ZONE_4_PATH.addCoordinate(D_ROW_3_POINT_4)
        D_ZONE_4_PATH.addCoordinate(D_ROW_3_POINT_3)
        
        D_ZONE_5_PATH.addCoordinate(D_ROW_3_POINT_1)
        D_ZONE_5_PATH.addCoordinate(D_ROW_3_POINT_2)
        D_ZONE_5_PATH.addCoordinate(D_ROW_4_POINT_2)
        D_ZONE_5_PATH.addCoordinate(D_ROW_4_POINT_1)
        
        D_ZONE_6_PATH.addCoordinate(D_ROW_3_POINT_2)
        D_ZONE_6_PATH.addCoordinate(D_ROW_3_POINT_3)
        D_ZONE_6_PATH.addCoordinate(D_ROW_3_POINT_4)
        D_ZONE_6_PATH.addCoordinate(D_ROW_4_POINT_3)
        D_ZONE_6_PATH.addCoordinate(D_ROW_4_POINT_2)
        
        D_ZONE_7_PATH.addCoordinate(D_ROW_4_POINT_1)
        D_ZONE_7_PATH.addCoordinate(D_ROW_4_POINT_2)
        D_ZONE_7_PATH.addCoordinate(D_ROW_5_POINT_2)
        D_ZONE_7_PATH.addCoordinate(D_ROW_5_POINT_1)
        
        D_ZONE_8_PATH.addCoordinate(D_ROW_4_POINT_2)
        D_ZONE_8_PATH.addCoordinate(D_ROW_4_POINT_3)
        D_ZONE_8_PATH.addCoordinate(D_ROW_5_POINT_3)
        D_ZONE_8_PATH.addCoordinate(D_ROW_5_POINT_2)
        
        D_ZONE_1 = GMSPolygon(path: D_ZONE_1_PATH)
        D_ZONE_2 = GMSPolygon(path: D_ZONE_2_PATH)
        D_ZONE_3 = GMSPolygon(path: D_ZONE_3_PATH)
        D_ZONE_4 = GMSPolygon(path: D_ZONE_4_PATH)
        D_ZONE_5 = GMSPolygon(path: D_ZONE_5_PATH)
        D_ZONE_6 = GMSPolygon(path: D_ZONE_6_PATH)
        D_ZONE_7 = GMSPolygon(path: D_ZONE_7_PATH)
        D_ZONE_8 = GMSPolygon(path: D_ZONE_8_PATH)
        
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_1_ID, andPolygon: D_ZONE_1!))
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_2_ID, andPolygon: D_ZONE_2!))
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_3_ID, andPolygon: D_ZONE_3!))
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_4_ID, andPolygon: D_ZONE_4!))
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_5_ID, andPolygon: D_ZONE_5!))
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_6_ID, andPolygon: D_ZONE_6!))
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_7_ID, andPolygon: D_ZONE_7!))
        parkingZones.append( ZonePolygon(withID: Constants.SAC_MAIN_8_ID, andPolygon: D_ZONE_8!))

        // Initializes SAC Overflow (E) zone parkingZones
        
        E_ZONE_1_PATH.addCoordinate(E_ROW_1_POINT_1)
        E_ZONE_1_PATH.addCoordinate(E_ROW_1_POINT_2)
        E_ZONE_1_PATH.addCoordinate(E_ROW_2_POINT_2)
        E_ZONE_1_PATH.addCoordinate(E_ROW_2_POINT_1)

        E_ZONE_1 = GMSPolygon(path: E_ZONE_1_PATH)
        
        parkingZones.append( ZonePolygon(withID: Constants.SAC_OVERFLOW_1_ID, andPolygon: E_ZONE_1!))
        
        TALLENT_OUTLINE.addCoordinate(TH_ROW_1_POINT_1)
        TALLENT_OUTLINE.addCoordinate(TH_ROW_1_POINT_2)
        TALLENT_OUTLINE.addCoordinate(TH_ROW_2_POINT_2)
        TALLENT_OUTLINE.addCoordinate(TH_ROW_2_POINT_1)
        
        SHCC_OUTLINE.addCoordinate(SHCC_ROW_1_POINT_1)
        SHCC_OUTLINE.addCoordinate(SHCC_ROW_1_POINT_2)
        SHCC_OUTLINE.addCoordinate(SHCC_ROW_2_POINT_2)
        SHCC_OUTLINE.addCoordinate(SHCC_ROW_2_POINT_1)

        SC_OUTLINE.addCoordinate(SC_ROW_1_POINT_1)
        SC_OUTLINE.addCoordinate(SC_ROW_1_POINT_2)
        SC_OUTLINE.addCoordinate(SC_ROW_2_POINT_1)
        SC_OUTLINE.addCoordinate(SC_ROW_2_POINT_2)
        SC_OUTLINE.addCoordinate(SC_ROW_3_POINT_2)
        SC_OUTLINE.addCoordinate(SC_ROW_3_POINT_1)
        
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_1_POINT_1)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_1_POINT_2)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_2_POINT_3)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_4_POINT_2)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_4_POINT_1)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_3_POINT_2)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_3_POINT_1)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_2_POINT_1)
        MOLN_OUTLINE.addCoordinate(MOLN_ROW_2_POINT_2)

        GRNQ_OUTLINE.addCoordinate(GRNQ_ROW_1_POINT_1)
        GRNQ_OUTLINE.addCoordinate(GRNQ_ROW_1_POINT_2)
        GRNQ_OUTLINE.addCoordinate(GRNQ_ROW_2_POINT_2)
        GRNQ_OUTLINE.addCoordinate(GRNQ_ROW_2_POINT_1)
        GRNQ_OUTLINE.addCoordinate(GRNQ_ROW_3_POINT_2)
        GRNQ_OUTLINE.addCoordinate(GRNQ_ROW_3_POINT_1)

        WHYL_OUTLINE.addCoordinate(WHYL_ROW_1_POINT_1)
        WHYL_OUTLINE.addCoordinate(WHYL_ROW_1_POINT_2)
        WHYL_OUTLINE.addCoordinate(WHYL_ROW_3_POINT_2)
        WHYL_OUTLINE.addCoordinate(WHYL_ROW_3_POINT_1)
        WHYL_OUTLINE.addCoordinate(WHYL_ROW_2_POINT_1)
        WHYL_OUTLINE.addCoordinate(WHYL_ROW_2_POINT_2)
        
        RITA_OUTLINE.addCoordinate(RITA_ROW_1_POINT_1)
        RITA_OUTLINE.addCoordinate(RITA_ROW_1_POINT_2)
        RITA_OUTLINE.addCoordinate(RITA_ROW_2_POINT_1)
        RITA_OUTLINE.addCoordinate(RITA_ROW_2_POINT_2)
        RITA_OUTLINE.addCoordinate(RITA_ROW_3_POINT_2)
        RITA_OUTLINE.addCoordinate(RITA_ROW_3_POINT_1)
        RITA_OUTLINE.addCoordinate(RITA_ROW_4_POINT_2)
        RITA_OUTLINE.addCoordinate(RITA_ROW_4_POINT_1)
        
        SAC_OUTLINE.addCoordinate(SAC_ROW_1_POINT_1)
        SAC_OUTLINE.addCoordinate(SAC_ROW_1_POINT_2)
        SAC_OUTLINE.addCoordinate(SAC_ROW_2_POINT_2)
        SAC_OUTLINE.addCoordinate(SAC_ROW_2_POINT_1)
        
        tallentZone = GMSPolygon(path: TALLENT_OUTLINE)
        shccZone = GMSPolygon(path: SHCC_OUTLINE)
        studentCenterZone = GMSPolygon(path: SC_OUTLINE)
        molinaroZone = GMSPolygon(path: MOLN_OUTLINE)
        greenquistZone = GMSPolygon(path: GRNQ_OUTLINE)
        wyllieZone = GMSPolygon(path: WHYL_OUTLINE)
        ritaZone = GMSPolygon(path: RITA_OUTLINE)
        sacZone = GMSPolygon(path: SAC_OUTLINE)
        
        buildingZones.append( ZonePolygon(withID: Constants.TALLENT_HALL, andPolygon: tallentZone!))
        buildingZones.append( ZonePolygon(withID: Constants.SHCC, andPolygon: shccZone!))
        buildingZones.append( ZonePolygon(withID: Constants.STUDENT_CENTER, andPolygon: studentCenterZone!))
        buildingZones.append( ZonePolygon(withID: Constants.MOLN_HALL, andPolygon: molinaroZone!))
        buildingZones.append( ZonePolygon(withID: Constants.GRNQ_HALL, andPolygon: greenquistZone!))
        buildingZones.append( ZonePolygon(withID: Constants.WHYL_HALL, andPolygon: wyllieZone!))
        buildingZones.append( ZonePolygon(withID: Constants.RITA_HALL, andPolygon: ritaZone!))
        buildingZones.append( ZonePolygon(withID: Constants.SAC, andPolygon: sacZone!))

        for parkingZone:ZonePolygon in self.parkingZones
        {
            parkingZone.polygon!.tappable = true
        }
        
        for buildingZone:ZonePolygon in self.buildingZones
        {
            buildingZone.polygon!.tappable = true
        }
    }
    
}
