//
//  ToDoItem.swift
//  ToDo
//
//  Created by Kelly Linehan on 2/23/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation


class ToDoItem {
    var name: String
    var reminderDate: NSDate
    var id: String
    //initlize each item to take the three pieces of data it needs
    init(newName: String, newReminderDate: NSDate, newID: String){
        self.name = newName
        self.reminderDate = newReminderDate
        id = newID
    }
    
    func overDue()-> Bool {
    return (NSDate().compare(self.reminderDate) == NSComparisonResult.OrderedDescending)
    }
}
