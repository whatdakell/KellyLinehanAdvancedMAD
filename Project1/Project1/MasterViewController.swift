//
//  MasterViewController.swift
//  Project1
//
//  Created by Kelly Linehan on 3/1/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    var detailViewController: DetailViewController? = nil
    var objects = [AnyObject]()
    var states = [[String:String]]()
    let cellSpacingHeight: CGFloat = 50
   
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("studio", ofType: "plist")
        let alldata = NSDictionary(contentsOfFile: path!) as! [String: [[String : String]]]
        
        if alldata.isEmpty != true{
            states = Array(alldata["States"]!)
        }
        //self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        //let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        //self.navigationItem.rightBarButtonItem = addButton
        
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
            splitViewController?.preferredDisplayMode = .PrimaryOverlay
        }

    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
        super.viewWillAppear(animated)
            let backgroundImage = UIImage(named: "back.jpg")
            let imageView = UIImageView(image: backgroundImage)
            self.tableView.backgroundView = imageView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    func insertNewObject(sender: AnyObject) {
    objects.insert(NSDate(), atIndex: 0)
    let indexPath = NSIndexPath(forRow: 0, inSection: 0)
    self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    */
    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
                /*UIView.animateWithDuration(0.5) { () -> Void in
                    self.splitViewController?.preferredDisplayMode = .PrimaryHidden
                }*/
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        } else if segue.identifier == "teachers" {
            let controller = (segue.destinationViewController as! UINavigationController).topViewController as! InstructorsCollectionViewController
           /* UIView.animateWithDuration(0.5) { () -> Void in
                self.splitViewController?.preferredDisplayMode = .PrimaryHidden
            }*/
            controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
    }

    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clearColor()
        return headerView
    }

    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return states.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let state = states[indexPath.row]
        cell.textLabel!.text = state["name"]! as String
        //print(indexPath.row)
        //print(cell)
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("showDetail", sender: self)
        }else if indexPath.row == 1 {
            self.performSegueWithIdentifier("teachers", sender: self)
        }
        else if indexPath.row == 2 {
            self.performSegueWithIdentifier("contact", sender: self)
        } else if indexPath.row == 3 {
            self.performSegueWithIdentifier("news", sender: self)
        }
    }

    /*
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
    {
        if indexPath.row == 0
        {
            print("Segue1")
            self.performSegueWithIdentifier("showDetail", sender: self)
        }
        else if indexPath.row == 1
        {
            print("Segue2")
            self.performSegueWithIdentifier("teachers", sender: self)
        }
        else if indexPath.row == 2
        {
            print("Segue3")
            self.performSegueWithIdentifier("work", sender: self)
        }
        
    }
*/

  
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }
    /*
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    objects.removeAtIndex(indexPath.row)
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    
    }
    }
    */
    
    
}