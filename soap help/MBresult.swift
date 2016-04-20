//
//  MBresult.swift
//  soap help
//
//  Created by Kelly Linehan on 4/18/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class MBresult: NSObject , NSXMLParserDelegate {
    // For xml parsing, keeping track of node
    var element: String?
    var parentElementName:  String = ""
    //    var st = self.staff;
    
    /// The response error code
    var ErrorCode: Int = 0
    /// The response message or error description
    var Message: String = ""
    /// The response status
    var Status: String = ""
    /// The number of the results from the response
    var ResultCount = Int()
    /*!
    Map XML data. To be overridden.
    @param data the XML data
    */
    
    func mapData(data: NSData) {
    }
}

