//
//  classServe.swift
//  soap help
//
//  Created by Kelly Linehan on 4/18/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

//
//class classServe: NSObject {
//    class func GetClassesBetweenDate(startDate: NSDate, andDate endDate: NSDate, withinSchedulingWindow enrollable: Bool, withBlock block: (result: classesresult) -> Void) {
//        var request: NSURLRequest = XMLClassService.SOAPGetClasses(nil, staffIDs: nil, startDateTime: startDate, endDateTime: endDate, clientID: nil, serviceCategoryIDs: nil, sessionTypeIDs: nil, locationIDs: nil, schedulingWindow: enrollable)
//        var session: NSURLSession = NSURLSession.sharedSession()
//        session.dataTaskWithRequest(request, completionHandler: {(data: NSData, response: NSURLResponse, error: NSError) -> Void in
//            var result: ClassesResult = ClassesResult()
//            result.mapData(data)
//            block(result)
//        }).resume()
//    }
//}