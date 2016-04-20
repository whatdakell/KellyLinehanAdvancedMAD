//
//  newsTableViewController.swift
//  Project1
//
//  Created by Kelly Linehan on 4/17/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class newsTableViewController: UITableViewController {
    
//    var detailViewController: DetailViewController? = nil
    var objects = [[String:String]]()
//    
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var detialTextLabel: UILabel!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        loadjson()
    }
    
    func loadjson(){
        let urlPath = "http://somelikeithotyoga.com/api/get_recent_posts/"
        //   let urlPath = "https://api.mindbodyonline.com/0_5/ClassService.asmx?op=GetClasses"
        guard let url = NSURL(string: urlPath)
            else {
                print("url error")
                return
        }
        
        let session = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: {(data, response, error) in
            let httpResponse = response as! NSHTTPURLResponse
            let statusCode = httpResponse.statusCode
            guard statusCode == 200
                else {
                    print("file download error")
                    return
            }
            
            print("download complete")
            dispatch_async(dispatch_get_main_queue()) {self.parsejson(data!)}
        })
        session.resume()
    }
    
    func parsejson(data: NSData){
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) as! NSDictionary
            let allresults = json["posts"] as! NSArray
            let results = Array(allresults)
            for result in results {
                guard let title = result["title"]! as? String,
                    let sigCount = result["content"] as? NSNumber,
                    let itemurl = result["url"]!as? String
                    else {
                        continue
                }
                let obj = ["title": title, "id": sigCount.stringValue, "url": itemurl]
                self.objects.append(obj)
            }
            
        } catch {
            print("Error with JSON: \(error)")
            return
        }
        
        tableView.reloadData()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Segues
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "showDetail" {
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let petition = objects[indexPath.row]
//                let title = petition["title"]
//                let url = petition["url"]
//                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
//                controller.detailItem = url
//                controller.title = title
//                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
//                controller.navigationItem.leftItemsSupplementBackButton = true
//            }
//        }
   // }
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! newsTableViewCell
        
        let object = objects[indexPath.row]
        cell.newtitle!.text = object["content"]
        cell.sub!.text = object["title"]
        
//        if object["id"] != nil {
//            cell.detailTextLabel!.text = object["id"]! + " id"
//        }
        return cell
    }
}
