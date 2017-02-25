//
//  ViewController.swift
//  HelloWorld
//
//  Created by Alexis San Javier on 2/24/17.
//  Copyright © 2017 San Javier. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    override func loadView() {
        
        
        let image = #imageLiteral(resourceName: "Miguel")
        
        let imageview = UIImageView(image: image)
        imageview.layer.borderColor = UIColor.blue.cgColor
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 25.7565756, longitude: -80.3739487, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 25.7565756, longitude: -80.3739487)
        marker.title = "Active"
        marker.snippet = "Throwing a party at my house"
        marker.icon = image
        marker.map = mapView
    
        
    }

}

