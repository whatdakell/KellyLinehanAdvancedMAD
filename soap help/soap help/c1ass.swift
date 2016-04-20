//
//  c1ass.swift
//  soap help
//
//  Created by Kelly Linehan on 4/17/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

class c1ass: DataMapper{

var startDateString: String = ""
var endDateString: String = ""

var ClassScheduleID: String = ""
var ID: String!
var MaxCapacity: Int = 0
var WebCapacity: Int = 0
var TotalBooked: Int = 0
var StartDateTime: NSDate!
var EndDateTime: NSDate!

    let classD = classdes()
    var Staff = staff()


    override func mapElement(element: String, with string: String) {
        if (element == "ClassScheduleID") {
             self.ClassScheduleID = Uiti.concate(self.ClassScheduleID, notNilString: string)
        }
        else if (element == "MaxCapacity") {
            self.MaxCapacity = Int(string)!
        }
        else if (element == "WebCapacity") {
            self.WebCapacity = Int(string)!
        }
        else if (element == "TotalBooked") {
            self.TotalBooked = Int(string)!
        }
        else if (element == "StartDateTime") {
            startDateString = Uiti.concate(startDateString, notNilString: string)
        }
        else if (element == "EndDateTime") {
            endDateString = Uiti.concate(endDateString, notNilString: string)
        }
        
    }
    
    override func finish() {
        self.StartDateTime = Uiti.convertISOToDate(startDateString)
        self.EndDateTime = Uiti.convertISOToDate(endDateString)
}
}
