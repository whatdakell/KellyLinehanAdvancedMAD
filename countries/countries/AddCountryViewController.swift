//
//  AddCountryViewController.swift
//  countries
//
//  Created by Kelly Linehan on 2/9/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class AddCountryViewController: UIViewController {
    
    var addedCountry = String()

    @IBOutlet weak var countryText: UITextField!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "doneSegue" {
            if ((countryText.text?.isEmpty) == false) {
                addedCountry = countryText.text!
            }
        }
    }
    override func viewDidLoad() {
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
