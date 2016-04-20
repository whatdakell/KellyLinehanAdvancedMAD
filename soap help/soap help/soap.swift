//
//  soap.swift
//  soap help
//
//  Created by Kelly Linehan on 4/18/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

class soap: NSObject {


class func SOAPGetClasses(classIDs: [AnyObject]!, staffIDs: [AnyObject]?, startDateTime: NSDate!, endDateTime: NSDate?, clientID: String?, serviceCategoryIDs programIDs: [AnyObject]!, sessionTypeIDs: [AnyObject]?, locationIDs: [AnyObject]?, schedulingWindow: Bool) -> NSURLRequest {
    //    SourceCredentials *src = [SourceCredentials sharedInstance];
    let header = "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns=\"http://" +
        "clients.mindbodyonline.com/api/0_5\">" +
        "<soapenv:Header/>" +
        "<soapenv:Body>" +
        "<GetClasses>" +
    "<Request>"
    let soap = NSMutableString()
    soap.appendString(header)
    // Source
    //    SourceCredentials *src = [SourceCredentials sharedInstance];
    //
    //    src.SourceName = @"SomeLikeItHotYogaandBoutique"; // Your API source names goes here
    //    src.Password = @"rwrTNQZgM3ohYOZjbW3/yNqW5wc="; // The source password goes here
    //    src.SiteID = @"41923"; // The site/studio ID
    //    src.SiteID = @"41923";
    soap.appendString("<SourceCredentials>")
    soap.appendString("<SourceName>\("SomeLikeItHotYogaandBoutique")</SourceName>")
    soap.appendString("<Password>\("rwrTNQZgM3ohYOZjbW3/yNqW5wc=")</Password>")
    soap.appendString("<SiteIDs><int>\("41923")</int></SiteIDs>")
    soap.appendString("</SourceCredentials>")
    // User credentials
    //    UserCredentials *user = [UserCredentials sharedInstance];
    //    if ([user Username] && [user Password] && [user SiteID])
    //    {
    //        [soap appendString:@"<UserCredentials>"];
    //        [soap appendString:[NSString stringWithFormat:@"<Username>%@</Username>", user.Username]];
    //        [soap appendString:[NSString stringWithFormat:@"<Password>%@</Password>", user.Password]];
    //        [soap appendString:[NSString stringWithFormat:@"<SiteIDs><int>%@</int></SiteIDs>", user.SiteID]];
    //        [soap appendString:@"</UserCredentials>"];
    //    }
    // IDs
    if classIDs != nil {
        soap.appendString("<ClassIDs>")
        for ID in classIDs {
            soap.appendString("<int>\(ID)</int>")
        }
        soap.appendString("</ClassIDs>")
    }
    if staffIDs != nil {
        soap.appendString("<StaffIDs>")
        for ID in staffIDs! {
            soap.appendString("<long>\(ID)</long>")
        }
        soap.appendString("</StaffIDs>")
    }
    if programIDs != nil {
        soap.appendString("<ProgramIDs>")
        for ID in programIDs! {
            soap.appendString("<int>\(ID)</int>")
        }
        soap.appendString("</ProgramIDs>")
    }
    if sessionTypeIDs != nil {
        soap.appendString("<SessionTypeIDs>")
        for ID in sessionTypeIDs! {
            soap.appendString("<int>\(ID)</int>")
        }
        soap.appendString("</SessionTypeIDs>")
    }
    if locationIDs != nil {
        soap.appendString("<LocationIDs>")
        for ID in locationIDs! {
            soap.appendString("<int>\(ID)</int>")
        }
        soap.appendString("</LocationIDs>")
    }
    if (startDateTime != nil) {
        //            Utils.convertDateToISO(endDateTime))
        soap.appendString("<StartDateTime>\((startDateTime))</StartDateTime>")
    }
    if (endDateTime != nil) {
        soap.appendString("<EndDateTime>\(endDateTime)</EndDateTime>")
    }
    if clientID != nil {
        soap.appendString("<ClientID>\(clientID)</ClientID>")
    }
    soap.appendString("<SchedulingWindow>\(schedulingWindow ? "true" : "false")</SchedulingWindow>")
    soap.appendString("<XMLDetail>Full</XMLDetail>")
    soap.appendString("</Request></GetClasses></soapenv:Body></soapenv:Envelope>")
    // NSLog(@"%@", soap);
    let url = NSURL(string: "https://api.mindbodyonline.com/0_5/ClassService.asmx")
    let request = NSMutableURLRequest(URL: url!)
    request.addValue("text/xml; charset=utf-8", forHTTPHeaderField: "Content-Type")
    request.addValue(String(format:"http://clients.mindbodyonline.com/api/0_5/%@", "GetClasses"), forHTTPHeaderField: "SOAPAction")
    request.HTTPMethod = "POST"
//    print(soap)
//    print(request)
    request.HTTPBody = soap.dataUsingEncoding(NSUTF8StringEncoding)
    return request
}

//        NSURLSession.sharedSession().dataTaskWithRequest(theRequest) { (data, response, error) in
//            if error == nil {
//                if let data = data, result = String(data: data, encoding: NSUTF8StringEncoding) {
//                    completion(result: result)
//                }
//            } else {
//                print(error!.debugDescription)
//            }
//            }.resume()
//    }

}
