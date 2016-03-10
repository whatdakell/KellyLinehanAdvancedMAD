//
//  itemdata.swift
//  Midterm
//
//  Created by Kelly Linehan on 3/10/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

class itemdata{
    var name : String
    var reminderDate : NSDate
    var id : String
    
    init(newName: String, newReminderDate: NSDate, newId: String){
        self.name = newName
        self.reminderDate = newReminderDate
        id = newId
    }
    
    func overDue()->Bool {
        return (NSDate().compare(self.reminderDate) == NSComparisonResult.OrderedDescending)
    }
}