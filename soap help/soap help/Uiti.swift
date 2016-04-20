//
//  Uiti.swift
//  soap help
//
//  Created by Kelly Linehan on 4/17/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

let ISO_DATE_TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss"
let ISO_DATE_FORMAT = "yyyy-MM-dd"

class Uiti: NSObject{
     class func concate(orig: String!, notNilString: String) -> String {
        return orig == nil ? notNilString : "\(orig)\(notNilString)"
    }
    //REDOO!
    class func convertDateToISO(date: NSDate) -> String {
        // Convert NSDate to string
        var df = NSDateFormatter()
        df.dateFormat = ISO_DATE_TIME_FORMAT
        df.timeZone = NSTimeZone(name: "GMT")
        return df.stringFromDate(date)
    }
    /*!
    Convert a date string in the ISO format (yyyy-MM-ddTHH:mm:ss) to the system date object
    @param string a date string in the ISO formate
    */
    
    class func convertISOToDate(string: String) -> NSDate {
        // Convert string to NSDate
        var df = NSDateFormatter()
        df.dateFormat = ISO_DATE_TIME_FORMAT
        df.timeZone = NSTimeZone(name: "GMT")
        return df.dateFromString(string)!
    }
    
    class func dateToString(date: NSDate, format: String) -> String {
        // Convert NSDate to string
        var df = NSDateFormatter()
        df.dateFormat = format
        df.timeZone = NSTimeZone(name: "GMT")
        return df.stringFromDate(date)
    }
    /*!
    Convert a date string in the given formate to a system date
    @param string a date string in the ISO formate
    @param formate date string format
    */
    
    class func stringToDate(string: String, format: String) -> NSDate {
        // Convert NSDate to string
        var df = NSDateFormatter()
        df.dateFormat = format
        df.timeZone = NSTimeZone(name: "GMT")
        return df.dateFromString(string)!
    }
}