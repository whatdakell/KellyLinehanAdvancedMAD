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

    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("names", ofType: "plist")
        name = NSDictionary(contentsOfFile: path!) as! [String : [String]]
        letters = Array(name.keys)
        letters.sortInPlace({$0 < $1})
        //print(name)
        //print(name)
        // Do any additional setup after loading the view, typically from a nib.
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

