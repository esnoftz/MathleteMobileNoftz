//
//  MapViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 1/28/25.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapViewOutlet: MKMapView!
    
    var locationManager = CLLocationManager()
    
    var currentLocation: CLLocation!
    
    var highSchools: [MKMapItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        locationManager.requestWhenInUseAuthorization()
        mapViewOutlet.showsUserLocation = true
        
        
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let center = CLLocationCoordinate2D(latitude: 42.2371, longitude: -88.3226)
        let center2 = locationManager.location!.coordinate
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 1600, longitudinalMeters: 1600)
        let region2 = MKCoordinateRegion(center: center2, span: span)
        mapViewOutlet.setRegion(region2, animated: true)

    }
    
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // most recent location is at index 0
        currentLocation = locations[0]
    }
    
    
    
    
    @IBAction func searchAction(_ sender: UIButton) {
        
        let request = MKLocalSearch.Request()
        
        request.naturalLanguageQuery = "High School"
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        
        let search = MKLocalSearch(request: request)
        
        
        search.start { (response, error) in
            
            guard let response = response
            else {return}
            for mapItem in response.mapItems {
                
                // use contains method to see if title of each contans "High School" to get rid of middle schools?
                
                self.highSchools.append(mapItem)
                
                let annotation = MKPointAnnotation()
                annotation.coordinate = mapItem.placemark.coordinate
                annotation.title = mapItem.name
                self.mapViewOutlet.addAnnotation(annotation)
                
            }
        }
        
    }
    
    
    

}
