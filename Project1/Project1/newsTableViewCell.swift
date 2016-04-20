//
//  newsTableViewCell.swift
//  Project1
//
//  Created by Kelly Linehan on 4/17/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class newsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sub: UILabel!
    @IBOutlet weak var newtitle: UILabel!
    @IBOutlet weak var img: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
