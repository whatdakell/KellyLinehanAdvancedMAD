//
//  ClassTableViewController.swift
//  soap help
//
//  Created by Kelly Linehan on 4/18/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class ClassTableViewController: UITableViewController {
    var Classes: [AnyObject] = []
    var startDate = NSDate()
    var endDate = NSDate()
    var dateString: String = ""
    var myclass = c1ass()
    
    //    var ID : String?
    //    var classIDs: [AnyObject]!
    //    var staffIDs: [AnyObject]?
    //    var startDateTime: NSDate!
    //    var endDateTime: NSDate?
    //    var clientID: String?
    //    var programIDs: [AnyObject]?
    //    var sessionTypeIDs: [AnyObject]?
    //    var locationIDs: [AnyObject]?
    ////    var schedulingWindow: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadClasses()
        var btToday: UIBarButtonItem = UIBarButtonItem(title: "Today", style: .Plain, target: self, action: "loadToday")
        var btNext: UIBarButtonItem = UIBarButtonItem(title: ">", style: .Plain, target: self, action: "loadNextDay")
        var btPrev: UIBarButtonItem = UIBarButtonItem(title: "<", style: .Plain, target: self, action: "loadPreviousDay")
        self.navigationItem.rightBarButtonItems = [btNext, btPrev, btToday]
        //        if clientID == nil {
        //            self.tableView.allowsSelection = false
        //        }
        var backButton: UIBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = backButton
    }
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    func initilize() {
        //        progressDialog = UIAlertView()
        //        progressDialog!.message = "Loading..."
        //        //
        Classes = NSArray() as [AnyObject]
        self.loadToday()
    }
    
    func loadClasses() {
        //        progressDialog!.show()
        parsefile.GetClassesBetweenDate(startDate, andDate: endDate, withinSchedulingWindow: true, withBlock: {(result: classesresult) -> Void in
            //         NSLog(classes);
            dispatch_async(dispatch_get_main_queue(), {() -> Void in
                //                self.progressDialog!.dismissWithClickedButtonIndex(0, animated: true)
                if result.ErrorCode == 200 {
                    self.Classes = result.classes
                    //self.tableView.reloadData()
                    var dateString = Uiti.dateToString(self.myclass.StartDateTime!, format: "hh:mm a")
                    //        cell.subtitle.text = "\(dateString) with \(self.Staff.FirstName) \(self.Staff.LastName)"
                    print(dateString)
                    
                    var StaffString = staff().FirstName
                    print(StaffString)
                }
            })
        })
    }
    func loadToday() {
        startDate = NSDate()
        endDate = startDate
        self.loadClasses()
    }
    
    func loadNextDay() {
        let DAY_INCREMENT = Double(24 * 60 * 60)

        startDate = NSDate(timeInterval: DAY_INCREMENT, sinceDate: startDate)
        endDate = startDate
        self.loadClasses()
    }
    
    func loadPreviousDay() {
        let DAY_INCREMENT = Double(24 * 60 * 60)

        startDate = NSDate(timeInterval: -DAY_INCREMENT, sinceDate: startDate)
        endDate = startDate
        self.loadClasses()
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
//    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String {
//        //return Uiti.dateToString(startDate!, format: "MMMM dd, yyyy")
//    }
    
    override  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Classes.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath)
        
//        let object = Classes[indexPath.row]
//        cell.textLabel!.text = object["title"]
//        if object["signature"] != nil {
//            cell.detailTextLabel!.text = object["signature"]! + " signatures"
//        }
//        return cell
//
//
////        var CellIdentifier: String = "ListCellId"
////        var cell: ListCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier)
//////        if cell == nil {
//////            cell = (ListCell.cellFromNibNamed("ListCell") as! ListCell)
//////        }
        let myclass = c1ass()
        
         self.myclass = Classes[indexPath.row] as! c1ass
//        var self: C1ass = classes[indexPath.row] as! C1ass
        //    cell.lbCapacity.text = [NSString stringWithFormat:@"%d/%d", class.TotalBooked, class.MaxCapacity];
//        cell.title.text = self.ClassDescription.Name
//        NSLog(self.ClassDescription.Name)
        var dateString = Uiti.dateToString(myclass.StartDateTime!, format: "hh:mm a")
//        cell.subtitle.text = "\(dateString) with \(self.Staff.FirstName) \(self.Staff.LastName)"
        print(dateString)
        
        var StaffString = staff().FirstName
        print(StaffString)
        //     NSLog(class.StartDateTime);
        //    NSString *yas = [class.Staff.FirstName];
        //
        //var progressValue: CGFloat = ((self.TotalBooked as! CGFloat) / (self.MaxCapacity as! CGFloat))
        //cell.pvCapacity.setProgress(progressValue, animated: true)
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        // Tab the class for booking
//        if clientID != nil {
//            var self: C1ass = classes[indexPath.row] as! C1ass
//            //        ClassCheckoutViewController *t = [[ClassCheckoutViewController alloc] initWithClass:class ClientID:clientID];
//            //        [self.navigationController pushViewController:t animated:YES];
//        }
    
}


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

