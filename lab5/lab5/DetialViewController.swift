//
//  DetialViewController.swift
//  lab5
//
//  Created by Kelly Linehan on 2/28/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class DetialViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var imageName: String?
    override func viewDidLoad() {
        
        if let name = imageName{
            image.image = UIImage(named: name)
        }
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
