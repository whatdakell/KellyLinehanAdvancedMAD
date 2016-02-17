//
//  ViewController.swift
//  lab3
//
//  Created by Kelly Linehan on 2/16/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class ViewController:  UITableViewController {

    let shoppingList = List()
    let dataFile = "data.plist"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path:String?
        let filePath = docFilePath(dataFile)
        
        if NSFileManager.defaultManager().fileExistsAtPath(filePath!) {
            path = filePath
        }
        else {

         path = NSBundle.mainBundle().pathForResource("todo", ofType: "plist")
        
        }
        shoppingList.list = NSDictionary(contentsOfFile: path!) as! [String : [String]]
        shoppingList.items = Array(shoppingList.list.keys)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        let app = UIApplication.sharedApplication()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "applicationWillResignActive:", name: "UIApplicationWillResignActiveNotification", object: app)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "itemSegue" {
        let detailVC = segue.destinationViewController as! detailView
        let indexPath = tableView.indexPathForCell(sender as! UITableViewCell)!
        //sets the data for the destination controller
        detailVC.title = shoppingList.items[indexPath.row]
        detailVC.itemList=shoppingList
        detailVC.selectedItem = indexPath.row
        }
    }
    
    func docFilePath(filename: String) -> String? {
            let path = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true)
            let dir = path[0] as NSString
            return dir.stringByAppendingPathComponent(filename)
    }
    
    func applicationWillResignActive(notification: NSNotification){
            let filePath = docFilePath(dataFile)
            let data = NSMutableDictionary()
            data.addEntriesFromDictionary(shoppingList.list)
            data.writeToFile(filePath!, atomically: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shoppingList.list.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = shoppingList.items[indexPath.row]
        
        // Configure the cell...
        
        return cell
}

}
    