//
//  MapController.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/23/21.
//

import UIKit
import CoreLocation
import CoreMotion
import MapKit

//Controls the Map portion of the app, displays an app with general locations of buildings

class MapController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate

{
    @IBOutlet weak var Map: MKMapView!
    @IBOutlet weak var begin: UIButton!
    let locationManager = CLLocationManager()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
            followUserLocation()
            AddAnnotations()
            locationManager.startUpdatingLocation()
        }
        else
        {
                print("Location services are not enabled");
        }
        Map.delegate = self
        Map.isZoomEnabled = true
        Map.isScrollEnabled = true
        Map.showsUserLocation = true
    }
    func followUserLocation()
    {
        if let location = locationManager.location?.coordinate
        {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 100, longitudinalMeters: 100)
            Map.setRegion(region, animated: true)
        }
    }
    func AddAnnotations()
    {
        let North = Annotation(title: "North Hall", coordinate: CLLocationCoordinate2D(latitude: 40.925173, longitude: -73.788664))
        let Rice = Annotation(title: "Rice Hall", coordinate: CLLocationCoordinate2D(latitude: 40.928304, longitude: -73.783942))
        let Conese = Annotation(title: "Conese Hall", coordinate: CLLocationCoordinate2D(latitude: 40.924708, longitude: -73.788409))
        let Hales = Annotation(title: "Hales Hall", coordinate: CLLocationCoordinate2D(latitude: 40.924347, longitude: -73.78833))
        let Loftus = Annotation(title: "Loftus Hall", coordinate: CLLocationCoordinate2D(latitude: 40.924253, longitude: -73.788667))
        let East = Annotation(title: "East Hall", coordinate: CLLocationCoordinate2D(latitude: 40.928304, longitude: -73.783942))
        let Murphy = Annotation(title: "Murphy Hall", coordinate: CLLocationCoordinate2D(latitude: 40.924623, longitude: -73.788979))
        let McSpedon = Annotation(title: "McSpedon Hall", coordinate: CLLocationCoordinate2D(latitude: 40.925783, longitude: -73.788084))
        let Amend = Annotation(title: "Amend Hall", coordinate: CLLocationCoordinate2D(latitude: 40.925652, longitude: -73.786969))
        let Doorley = Annotation(title: "Doorley Hall", coordinate: CLLocationCoordinate2D(latitude: 40.926281, longitude: -73.787303))
        let Cornelia = Annotation(title: "Cornelia Hall", coordinate: CLLocationCoordinate2D(latitude: 40.926251, longitude: -73.787846))
        let Spellman = Annotation(title: "Spellman Hall", coordinate: CLLocationCoordinate2D(latitude: 40.925965, longitude: -73.78652))
        let StudentUnion = Annotation(title: "LaPenta Student Union", coordinate: CLLocationCoordinate2D(latitude: 40.926657, longitude: -73.786478))
        let Hynes = Annotation(title: "Hynes Athletic Center", coordinate: CLLocationCoordinate2D(latitude: 40.926279, longitude: -73.785612))
        let Ryan = Annotation(title: "Spellman Hall", coordinate: CLLocationCoordinate2D(latitude: 40.925181, longitude: -73.787587))
        let Business = Annotation(title: "LaPenta Business", coordinate: CLLocationCoordinate2D(latitude: 40.927412, longitude: -73.784506))
        
        Map.addAnnotation(North)
        Map.addAnnotation(Rice)
        Map.addAnnotation(Hales)
        Map.addAnnotation(Conese)
        Map.addAnnotation(Business)
        Map.addAnnotation(Loftus)
        Map.addAnnotation(Amend)
        Map.addAnnotation(Ryan)
        Map.addAnnotation(Hynes)
        Map.addAnnotation(Spellman)
        Map.addAnnotation(StudentUnion)
        Map.addAnnotation(Doorley)
        Map.addAnnotation(Cornelia)
        Map.addAnnotation(McSpedon)
        Map.addAnnotation(East)
        Map.addAnnotation(Murphy)
    }
}
