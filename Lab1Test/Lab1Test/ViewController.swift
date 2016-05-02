//
//  ViewController.swift
//  Lab1Test
//
//  Created by Kelly Linehan on 1/26/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let typeComponent = 2
    let courseComponent = 1
    let moodComponent = 0
    
    var types : [String]!
    var course : [String]!
    var mood : [String]!

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var foodmood: UIPickerView!
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
//    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
//        //return
//        // if compnent ==1 return this.
//    }
//    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == moodComponent{
            return mood.count
        }
        if component == courseComponent{
            return course.count
        }
        else{
            return types.count
        }
        
    }
    
//    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
//        if component == typeComponent{
//            return types[row]
//        }
//        if component == courseComponent{
//            return course[row]
//        }
//        else {
//            return mood[row]
//        }

        
//        var fontAttributes = [NSFontAttributeName: UIFont(name: "Verdana", size: 5.0)]
//        let rowtext = types[row] as String!
//        if component == typeComponent{
//          
//            let title = NSMutableAttributedString(string: rowtext, attributes: fontAttributes)
//            return title
//        }
//        if component == courseComponent{
//            let ftitle = NSMutableAttributedString(string: course[row], attributes: fontAttributes)
//            return ftitle
//            
//        }
//        else {
//            let mtitle = NSMutableAttributedString(string: mood[row], attributes: fontAttributes)
//            return mtitle
        
        
   // }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == moodComponent{
            return mood[row]
        }
        if component == courseComponent{
            return course[row]
        }
        else {
            return types[row]
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          let moodrow = pickerView.selectedRowInComponent(moodComponent)
        
        
        let courserow = pickerView.selectedRowInComponent(courseComponent)
        let typerow = pickerView.selectedRowInComponent(typeComponent)
        
        
        label.text = "your Mood is \(mood[moodrow]) it is \(course[courserow]) and you want \(types[typerow]) "
        
    }
    // if component equals 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("mood", ofType: "plist")
        mood = NSArray(contentsOfFile: path!) as! Array!
        
        let firstpath = NSBundle.mainBundle().pathForResource("course", ofType: "plist")
         course = NSArray(contentsOfFile: firstpath!) as! Array!
        
        let secondpath = NSBundle.mainBundle().pathForResource("types", ofType: "plist")
        types = NSArray(contentsOfFile: secondpath!) as! Array!
        
        
        print(types)
        print(course)
        print(mood)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

