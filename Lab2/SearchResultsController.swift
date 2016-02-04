import UIKit

class SearchResultsController: UITableViewController, UISearchResultsUpdating {
    
    var name = [String : [String]]()
    var letters = [String]()
    var filteredWords = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "ID")
        
       
    }
    
        func updateSearchResultsForSearchController(searchController: UISearchController) {
        let searchString = searchController.searchBar.text
        filteredWords.removeAll(keepCapacity: true)
        if searchString?.isEmpty == false {
            let filter: String -> Bool = { name in
                let range = name.rangeOfString(searchString!, options: NSStringCompareOptions.CaseInsensitiveSearch)
                return range != nil
            }
            
            for key in letters {
                let words = name[key]!
                let matches = words.filter(filter)
                filteredWords.appendContentsOf(matches)
                
            }
        }
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
                return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredWords.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ID", forIndexPath: indexPath)
        cell.textLabel?.text = filteredWords[indexPath.row]
        return cell
    }
    }