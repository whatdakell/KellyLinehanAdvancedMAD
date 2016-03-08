//
//  todoitem.swift
//  lab6
//
//  Created by Kelly Linehan on 3/7/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

class todoitem {
    var name : String
    var reminderDate : NSDate
    var id : String
    
    init(newName: String, newReminderDate: NSDate, newId: String){
        self.name = newName
        self.reminderDate = newReminderDate
        id = newId
    }
    
    func overDue()->Bool {
        // reminder date is earlier than current date
        return (NSDate().compare(self.reminderDate) == NSComparisonResult.OrderedDescending)
    }
}