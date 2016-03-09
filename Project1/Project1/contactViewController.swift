//
//  contactViewController.swift
//  Project1
//
//  Created by Kelly Linehan on 3/8/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit
import MapKit

class contactViewController: UIViewController {
    @IBOutlet weak var mapview: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let location = CLLocationCoordinate2D(
            latitude: 38.066830,
            longitude: -122.541783
        )
        // 2
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: location, span: span)
        mapview.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Some Like It Hot"
        annotation.subtitle = "Yoga Studio and Boutique"
        mapview.addAnnotation(annotation)
}
        
}