//
//  DetailViewController.swift
//  lab7
//
//  Created by Kelly Linehan on 4/10/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var webSpinner: UIActivityIndicatorView!
    
    var detailItem: String?
    
    
    func configureView(){
        if let url = detailItem{
            loadWebPage(url)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate=self
        configureView()
    }
    
    func loadWebPage(urlString: String){
        let url = NSURL(string: urlString)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        webSpinner.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        webSpinner.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

