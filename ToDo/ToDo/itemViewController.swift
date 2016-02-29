//
//  itemViewController.swift
//  ToDo
//
//  Created by Kelly Linehan on 2/23/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class itemViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemtextfield: UITextField!
    @IBOutlet weak var reminderDatePicker: UIDatePicker!
    
    var addeditem : ToDoItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemtextfield.delegate=self

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "save" {
            if ((itemtextfield.text?.isEmpty) == false){
                addeditem = ToDoItem(newName: itemtextfield.text!, newReminderDate: reminderDatePicker.date, newID: NSUUID().UUIDString)
                
                
            }
        }
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
