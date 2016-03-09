//
//  InstructorPhotos.swift
//  Project1
//
//  Created by Kelly Linehan on 3/8/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class Photo {
    
   
    
    class func allPhotos() -> [Photo] {
        var photos = [Photo]()
        if let URL = NSBundle.mainBundle().URLForResource("Photos", withExtension: "plist") {
            if let photosFromPlist = NSArray(contentsOfURL: URL) {
                for dictionary in photosFromPlist {
                    let photo = Photo(dictionary: dictionary as! NSDictionary)
                    photos.append(photo)
                }
            }
        }
        return photos
    }
    
    var name: String
    var hours: String
    var image: UIImage
    

    init(name: String, hours: String, image: UIImage) {
        self.name = name
        self.hours = hours
        self.image = image
    }
    
    convenience init(dictionary: NSDictionary) {
        let name = dictionary["Name"] as? String
        let hours = dictionary["Hours"] as? String
        let photo = dictionary["Photo"] as? String
        let image = UIImage(named: photo!)//?.decompressedImage
        self.init(name: name!, hours: hours!, image: image!)
    }
    
    func heightForComment(font: UIFont, width: CGFloat) -> CGFloat {
        let rect = NSString(string: hours).boundingRectWithSize(CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        return ceil(rect.height)
    }
    
}
