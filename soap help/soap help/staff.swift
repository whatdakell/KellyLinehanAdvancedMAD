//
//  staff.swift
//  soap help
//
//  Created by Kelly Linehan on 4/17/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation


class staff: DataMapper {
    var FirstName: String = ""
    var LastName: String = ""
    var Name: String = ""
    var ID: String = ""
    var ImageURL: String = ""
    
    override func mapElement(element: String, with string: String) {
        if (element == "ID") {
            self.ID = string
        }
        else if (element == "Name") {
            self.Name = Uiti.concate(self.Name, notNilString: string)
        }
        else if (element == "FirstName") {
            self.FirstName = Uiti.concate(self.FirstName, notNilString: string)
            print(self.FirstName)
        }
        else if (element == "LastName") {
            self.LastName = Uiti.concate(self.LastName, notNilString: string)
        }
        else if (element == "ImageURL") {
            self.ImageURL = Uiti.concate(self.ImageURL, notNilString: string)
        }
        
    }
    
    override func finish() {
    }
}

    