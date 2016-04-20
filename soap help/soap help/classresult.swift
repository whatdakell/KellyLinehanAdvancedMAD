//
//  classresult.swift
//  soap help
//
//  Created by Kelly Linehan on 4/17/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

class classesresult: MBresult {
    
//    var c = c1ass.self;
    var thestaff = staff() as staff
      var c = c1ass() as c1ass
      var classes: [AnyObject] = []
//    //    Location *loc;
//      var prg: ServiceCategory?
//    var classDes: ClassDescription?
//     var sess: SessionType?
//
//    var Classes: [AnyObject]
//    var element: String?
//  var parentElementName: String?
//    var staff: staff
//    var c: C1ass
//    var classes: [AnyObject]
//    var loc: Location
//    var prg: ServiceCategory
//    var classDes: ClassDescription
//    var sess: SessionType
//    var client: Client
//    
//    var Classes: [AnyObject]
    var myparser: NSXMLParser!

//
    override func mapData(data: NSData) {
        myparser = NSXMLParser(data: data)
        myparser.delegate = self
        myparser.shouldResolveExternalEntities = false
        myparser.parse()
        parentElementName = ""
    }
    
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        ////        if elementName != nil{
        ////            lastElementName = currentElementName
        ////            currentElementName = elementName
        ////
        ////            if(elementName == firstNodeName){
        ////                chargingStation = ChargingStation()
        ////            }
        ////        }
        ////        println(String(format : "didStartElement / elementName %@", elementName))
        ////    }
    

//    
//    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String, qualifiedName qName: String, attributes attributeDict: [NSObject : AnyObject]) {
        element = elementName
            if (element == "Classes") {
            classes = NSMutableArray() as [AnyObject]
            parentElementName = "Classes"
        }
        if (element == "Class") {
            let c = c1ass()
            parentElementName = "Class"
            print(c)
        }
        else if (element == "Staff") {
            let thestaff = staff()
            parentElementName = "Staff"
            print(thestaff)
        }
//        else if (element == "Program") {
//            prg = ServiceCategory()
//            parentElementName = "Program"
//        }
//        else if (element == "SessionType") {
//            sess = SessionType()
//            parentElementName = "SessionType"
//        }
//        else if (element == "ClassDescription") {
//            classDes = ClassDescription()
//            parentElementName = "ClassDescription"
//        }
        
    }
    
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        // Result
        if (element == "Status") {
            self.Status = Uiti.concate(self.Status, notNilString: string)
        }
        else if (element == "ErrorCode") {
            self.ErrorCode = Int(string)!
        }
        else if (element == "ResultCount") {
            self.ResultCount = Int(string)!
        }
        else if (element == "Message") {
            self.Message = Uiti.concate(self.Message,notNilString: string)
        }
        
        if (parentElementName == "Class") {
//            c.mapElement(element!, with: string)
//            c.mapElement(self.element , with: string)
//            c1ass.mapElement(element)
            c.mapElement(element!, with: string)
        }
//        else if (parentElementName == "ClassDescription") {
//            classDes.mapElement(element, with: string)
//        }
        else if (parentElementName == "Staff") {
            thestaff.mapElement(element!, with: string)
            element=element!+"\n\n"+string
        }
//        else if (parentElementName == "SessionType") {
//            sess.mapElement(element, with: string)
//        }
//        else if (parentElementName == "Program") {
//            prg.mapElement(element, with: string)
//        }
        
    }
    
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String, qualifiedName qName: String) {
        // Finish staff
        element = elementName
        if (elementName == "Staff") {
            thestaff = c.Staff
            parentElementName = "Class"
            print(thestaff)
        }
//        else if (elementName == "ClassDescription") {
//            c.ClassDescription = classDes
//            parentElementName = "Class"
//        }
//        else if (elementName == "Program") {
//            classDes.ServiceCategory = prg
//            parentElementName = "ClassDescription"
//        }
//        else if (elementName == "SessionType") {
//            c.ClassDescription = classDes
//            parentElementName = "ClassDescription"
//        }
        else if (elementName == "Class") {
            c.finish()
            classes.append(c)
            parentElementName = "Classes"
        }
        else if (elementName == "Classes") {
            self.classes = (classes)
        }
        
    }
}