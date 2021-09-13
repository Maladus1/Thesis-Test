//
//  Annotation.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/23/21.
//

import Foundation
import MapKit

class Annotation: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    
    init(title: String, coordinate: CLLocationCoordinate2D)
    {
        self.title = title
        self.coordinate = coordinate
    }
}

