//
//  ViewController.swift
//  parkFinder
//
//  Created by Bailey Yingling on 3/15/21.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    var parks: [MKMapItem] = []
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
    }

    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }

    @IBAction func whenZoomButtonPressed(_ sender: UIBarButtonItem) {
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        let center = currentLocation.coordinate
        let region = MKCoordinateRegion(center: center, span: coordinateSpan)
        mapView.setRegion(region, animated: true)
    }
    
    @IBAction func whenSearchButtonPressed(_ sender: UIBarButtonItem) {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "parks"
        let span = MKCoordinateSpan(latitudeDelta: 0.06, longitudeDelta: 0.06)
        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            guard let response = response else { return }
            for mapItem in response.mapItems {
                self.parks.append(mapItem)
                let annotation = MKPointAnnotation()
                annotation.coordinate = mapItem.placemark.coordinate
                annotation.title = mapItem.name
                self.mapView.addAnnotation(annotation)
            }
        }
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        var pin = MKAnnotationView(annotation: annotation, reuseIdentifier: nil)
        if let title = annotation.title, let actualTitle = title {
            if actualTitle == "Westgrove Park" {
                pin.image = UIImage(named: "MobileMakerIconPinImage")
            } else {
                pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
            }
        }
        pin.canShowCallout = true
        let button = UIButton(type: .detailDisclosure)
        pin.rightCalloutAccessoryView = button
        if annotation.isEqual(mapView.userLocation) {
            return nil
        }
        return pin
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        var currentMapItem = MKMapItem()
        if let coordinate = view.annotation?.coordinate {
            for mapItem in parks {
                if mapItem.placemark.coordinate.latitude == coordinate.latitude && mapItem.placemark.coordinate.longitude == coordinate.longitude {
                    currentMapItem = mapItem
                }
            }
        }
        let placemark = currentMapItem.placemark
        //print(currentMapItem)
        if let parkName = placemark.name, let streetNumber = placemark.subThoroughfare, let streetName = placemark.thoroughfare {
            let streetAddress = streetNumber + " " + streetName
            let alert = UIAlertController(title: parkName, message: streetAddress, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
}
