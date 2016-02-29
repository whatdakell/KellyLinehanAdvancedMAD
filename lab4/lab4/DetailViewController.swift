//
//  DetailViewController.swift
//  lab4
//
//  Created by Kelly Linehan on 2/23/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    @IBOutlet weak var wevView: UIWebView!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    func loadWebPage(urlString: String){
        let url = NSURL(string: urlString)
        let request = NSURLRequest(URL: url!)
        wevView.loadRequest(request)
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
                loadWebPage(detail.description)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

