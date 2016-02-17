//
//  detailView.swift
//  lab3
//
//  Created by Kelly Linehan on 2/16/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class detailView:  UITableViewController {
    
    var listItems = [String]()
    var selectedItem = 0
    
    var itemList = List()
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        if segue.identifier=="doneSegue"{
            let source = segue.sourceViewController as! AddItemViewController
            if ((source.addedItem.isEmpty) == false){
                listItems.append(source.addedItem)
                tableView.reloadData()
                let pickedItem = itemList.items[selectedItem]
                
                itemList.list[pickedItem]?.append(source.addedItem)
            }
        }
        
       
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
       //  self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool) {
        itemList.items = Array(itemList.list.keys)
        let pickedItem = itemList.items[selectedItem]
        
        listItems = itemList.list[pickedItem]! as [String]
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
        return listItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text=listItems[indexPath.row]

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }


    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            listItems.removeAtIndex(indexPath.row)
            let pickedItem = itemList.items[selectedItem]
            
            itemList.list[pickedItem]?.removeAtIndex(indexPath.row)
            

            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        let fromRow = fromIndexPath.row
        let toRow = toIndexPath.row
        let moveItem = listItems[fromRow]
        listItems.removeAtIndex(fromRow)
        listItems.insert(moveItem, atIndex: toRow)
        
        let pickedItem = itemList.items[selectedItem]
        itemList.list[pickedItem]?.removeAtIndex(fromRow)
        itemList.list[pickedItem]?.insert(moveItem, atIndex: toRow)
    }


    
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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
