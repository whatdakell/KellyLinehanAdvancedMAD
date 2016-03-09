//
//  DetailViewController.swift
//  Project1
//
//  Created by Kelly Linehan on 3/1/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    
    @IBOutlet weak var webview: UIWebView!
    let cellSpacingHeight: CGFloat = 50
    
    
    let days = ["Monday March 7","Tuesday March 8","Wednesday March 9","Thursday March 10","Friday March 11"]
    let yogatypes = ["Hot Yoga","Power","Yin","Bykyasa","Hot Yoga"]

    let teachers = ["Kelly","Darlene","Amadeo","Darlene","Amadeo","Melanie"]
    let times = ["5:30am","8:00am","10:30am","12:00PM","4:00PM","6:30PM"]
    
    /*
    override func viewWillAppear(animated: Bool) {
        //clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
        super.viewWillAppear(animated)
        let backgroundImage = UIImage(named: "back.jpg")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        
    }

    */




    // MARK: - UITableViewDataSource

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 3
    }
 
    
   func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 3
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        
        let date = days as [String]?
        return date![section]

      
    }
   func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    


    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
    }
    
    func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "cell2"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! InfoTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let instuctors = teachers[indexPath.row]
        let yoga = yogatypes[indexPath.row]
        let gettime = times[indexPath.row]
        
        cell.instructor.text = instuctors
        cell.classtype.text = yoga
        cell.time.text = gettime
        
        return cell
    }
    
    /*https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson7.html#//apple_ref/doc/uid/TP40015214-CH8-SW2
*/
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let character = characters[indexPath.row]
        cell.textLabel!.text = character["name"]! as String
        return cell
    }
*/
    /*
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath)
        cell.textLabel?.text = "Section \(indexPath.section)"
        let slabel = self.instructor
            label.text = detail.description

        cell..text = days2[indexPath.row]
        cell.detailTextLabel?.text = "Row \(indexPath.row)"
        return cell
    }
*/
    /*
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return basicCellAtIndexPath(indexPath)
    }
    
    func basicCellAtIndexPath(indexPath:NSIndexPath) -> BasicCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell2") as! BasicCell
        setTitleForCell(cell, indexPath: indexPath)
        setSubtitleForCell(cell, indexPath: indexPath)
        return cell
    }
    
    func setTitleForCell(cell:BasicCell, indexPath:NSIndexPath) {
        let item = items[indexPath.row] as RSSItem
        cell.instructor.text = item.title ?? "[No Title]"
    }
    
    func setSubtitleForCell(cell:BasicCell, indexPath:NSIndexPath) {
        let item = items[indexPath.row] as RSSItem
        var subtitle: NSString? = item.mediaText ?? item.mediaDescription
        
        if let subtitle = subtitle {
    
            if subtitle.length > 200 {
                cell.subtitleLabel.text = "\(subtitle.substringToIndex(200))..."
                
            } else {
                cell.subtitleLabel.text = subtitle as String
            }
            
        } else {
            cell.subtitleLabel.text = ""
        }
    }
    */
    
    
    
}


