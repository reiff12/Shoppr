//
//  storeMap.swift
//  Shoppr
//
//  Created by Tyler on 3/22/15.
//  Copyright (c) 2015 Tyler Reiff. All rights reserved.
//

import UIKit
import MapKit

class storeMap: UIViewController, MKMapViewDelegate {
    

    @IBOutlet weak var storeMap: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //map set up

        var latitude:CLLocationDegrees = 41.80801
        var longitude:CLLocationDegrees = -72.2541
        
        var latDelta:CLLocationDegrees = 0.02
        var longDelta:CLLocationDegrees = 0.02
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        storeMap.setRegion(region, animated: false)
        
        //price chopper marker
        
        var pchops = MKPointAnnotation()
        var pChopsLat:CLLocationDegrees = 41.48099
        var pChopsLong:CLLocationDegrees = -72.14276
        var PChopsLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(pChopsLat, pChopsLong)
        pchops.coordinate = PChopsLocation
        pchops.title = "Price Chopper"
        pchops.subtitle = "1220 Storrs Rd, Storrs, CT 06269"
        storeMap.addAnnotation(pchops)
        
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
