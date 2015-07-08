//
//  DatabaseExchange.swift
//  UWP-Navigation-iOS
//
//  Created by Kyle Zawacki on 7/6/15.
//  Copyright © 2015 App Factory. All rights reserved.
//

import Foundation

class DatabaseExchange
{
    class func sendVote(forZone zoneID:String, withVote vote:Int)
    {
        let url:NSURL = NSURL(string: "\(Constants.BASE_URL)\(Constants.VOTE)\(zoneID)/\(vote)")!
        print(url)
        
        let loginString:NSString = "\(Constants.USER):\(Constants.PASS)"
        let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
        let base64LoginString = loginData.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.Encoding64CharacterLineLength)

        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "GET"
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")

        var response: NSURLResponse?
        let urlData:NSData?
        
        do
        {
            urlData = try NSURLConnection.sendSynchronousRequest(request, returningResponse: &response)
            print(response!)
        } catch
        {
            print("ERROR")
        }
    }
    
    class func getFullness(forZone zoneId:String) -> String
    {
        let url:NSURL = NSURL(string: "\(Constants.BASE_URL)\(Constants.VOTE_AVG)\(zoneId)")!
        
        let loginString:NSString = "\(Constants.USER):\(Constants.PASS)"
        let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
        let base64LoginString = loginData.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.Encoding64CharacterLineLength)
        
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "GET"
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        
        var response: NSURLResponse?
        let urlData:NSData?

        do
        {
            urlData = try NSURLConnection.sendSynchronousRequest(request, returningResponse: &response)
            let stringResult = NSString(data: urlData!, encoding: NSUTF8StringEncoding)!
            return stringResult.stringByAppendingString("")
        } catch
        {
            print("ERROR")
            return ""
        }
    }
    
}