
//
//  parsefile.swift
//  soap help
//
//  Created by Kelly Linehan on 4/18/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation


class parsefile: NSObject {

class func GetClassesBetweenDate(startDate: NSDate, andDate endDate: NSDate, withinSchedulingWindow enrollable: Bool, withBlock block: (result: classesresult) -> Void) {
    let request: NSURLRequest = soap.SOAPGetClasses(nil, staffIDs: nil, startDateTime: startDate, endDateTime: endDate, clientID: nil, serviceCategoryIDs: nil, sessionTypeIDs: nil, locationIDs: nil, schedulingWindow: enrollable)
//    NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) -> Void in
//        <#code#>
//    }
//            NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) in
//                            if error == nil {
//                                if let data = data{
//                                    let result = classesresult()
//                                    result.mapData(data)
//                                     block(result: result)
//                                
////                
////                                result(data: data, encoding: NSUTF8StringEncoding) {
////                                    block(result: result)
////                                }
//                            } else {
//                                print(error!.debugDescription)
//                                }
//                }
//                }
//                
//                                .resume()
//    
//    }
    
    
    let session: NSURLSession = NSURLSession.sharedSession()
    session.dataTaskWithRequest(request)
    session.dataTaskWithRequest(request) { (data, respone, error) -> Void in
        //var result = classesresult()
        var result: classesresult = classesresult()
        result.mapData(data!)
        print(result)
        block(result: result)
        //block(result)
        }
        .resume()
}
//
//    let session =  NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) -> Void in
//        let httpResponse = response as! NSHTTPURLResponse
//        let statusCode = httpResponse.statusCode
//        print(statusCode)
//        guard statusCode == 200
//            else {
//                print("file download error")
//                return
//        }
//        let result = classesresult()
//        result.mapData(data!)
//        print(result)
//        block(result: result)
//        print("download complete")
//        dispatch_async(dispatch_get_main_queue()) {result.mapData(data!)}
//    }
//    session.resume()
//}


}


