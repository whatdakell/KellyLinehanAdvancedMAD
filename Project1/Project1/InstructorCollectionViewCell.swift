//
//  InstructorCollectionViewCell.swift
//  Project1
//
//  Created by Kelly Linehan on 3/8/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class InstructorCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var hours: UILabel!
    @IBOutlet weak var Iname: UILabel!
    @IBOutlet weak var Iimage: UIImageView!


var photo: Photo? {
    
didSet {
    if let photo = photo {
        Iimage.image = photo.image
        Iname.text = photo.name
        hours.text = photo.hours
    }
}
}


}
