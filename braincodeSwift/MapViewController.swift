//
//  MapViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    let zoomLocation = CLLocationCoordinate2D(latitude: 52.467291, longitude: 16.927386)
    
    override func viewWillAppear(animated: Bool) {
        self.setZoomLocation()
        self.setAnnotation()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setZoomLocation() {
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: zoomLocation, span:span)
        
        self.mapView.setRegion(region, animated: true)
    }
    
    func setAnnotation() {
        
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(zoomLocation)
        annotation.title = "UAM Morasko"
        annotation.subtitle = "Braincode hackathon #2"
        self.mapView.addAnnotation(annotation)
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
