//
//  InfoTableViewCell.swift
//  Project1
//
//  Created by Kelly Linehan on 3/8/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var classtype: UILabel!
    @IBOutlet weak var instructor: UILabel!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
