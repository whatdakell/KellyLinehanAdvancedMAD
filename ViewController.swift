//
//  ViewController.swift
//  Lab2
//
//  Created by Kelly Linehan on 2/4/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    var name : [String : [String]]!
    var letters : [String]!
    var searchController : UISearchController!


    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("names", ofType: "plist")
        name = NSDictionary(contentsOfFile: path!) as! [String : [String]]
        letters = Array(name.keys)
        letters.sortInPlace({$0 < $1})
        //print(name)
        //print(name)
        let resultsController = SearchResultsController()
        resultsController.name = name
        resultsController.letters = letters
        searchController = UISearchController(searchResultsController: resultsController)
        searchController.searchBar.placeholder = "Find A Baby Name"
        searchController.searchBar.sizeToFit()
        tableView.tableHeaderView=searchController.searchBar
        searchController.searchResultsUpdater = resultsController 
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let letter = letters[section]
        let letterSection = name[letter]! as [String]
        return letterSection.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let section = indexPath.section
        let letter = letters[section]
        let wordsSection = name[letter]! as [String]
        let cell = tableView.dequeueReusableCellWithIdentifier("ID",forIndexPath:indexPath) as UITableViewCell
        cell.textLabel?.text=wordsSection[indexPath.row]
        return cell
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return letters.count
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return letters[section]
    }
    
    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return letters
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

