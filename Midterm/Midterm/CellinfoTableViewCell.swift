//
//  CellinfoTableViewCell.swift
//  Midterm
//
//  Created by Kelly Linehan on 3/10/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class CellinfoTableViewCell: UITableViewCell {
    @IBOutlet weak var foodItem: UILabel!

    @IBOutlet weak var datelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
