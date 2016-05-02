//
//  AddRecipeViewController.swift
//  lab8
//
//  Created by Kelly Linehan on 4/30/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class AddRecipeViewController: UIViewController {

    @IBOutlet weak var recipename: UITextField!
    @IBOutlet weak var recipeUrl: UITextField!
    
    var addedrecipe = String()
    var addedurl = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "savesegue"{
            if recipename.text?.isEmpty == false {
                addedrecipe = recipename.text!
                addedurl = recipeUrl.text!
            }
        }
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
