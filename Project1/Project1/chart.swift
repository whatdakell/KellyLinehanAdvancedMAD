//
//  chart.swift
//  Project1
//
//  Created by Kelly Linehan on 3/1/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import Foundation

class chart {
    let title: String
    let url: NSURL
    
    
    required init(title: String, url: NSURL, number: Int, scale: Int) {
        self.title = title
        self.url = url

}
}