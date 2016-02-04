//
//  Search.swift
//  Lab2
//
//  Created by Kelly Linehan on 2/4/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class Search: UITableViewController, UISearchResultsUpdating  {
    
    
    var name : [String : [String]]()
    var letters : [String]()
    var searchedWords = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "ID")
        
        
        // Do any additional setup after loading the view.
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        let searchwords = searchController.searchBar.text
        searchedWords.removeAll(keepCapacity: true)
        if searchwords?.isEmpty == false {
            let filter: String -> Bool = {name in
                let range = name.rangeOfString(searchwords!, options: <#T##NSStringCompareOptions#>.CaseInsensitiveSearch)
                return range != nil
            }
            for key in letters {
                let words = name[key]!
                let matches = words.filter(filter)
                searchedWords.appendContentsOf(matches)
                
            }
        }
        
        override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            
            return 1
        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return searchedWords.count
        }
        
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("ID", forIndexPath: indexPath)
            cell.textLabel?.text = searchedWords[indexPath.row]
            return cell
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
