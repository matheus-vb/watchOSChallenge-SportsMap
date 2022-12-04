//
//  CLLocationCoordinate2D.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 04/12/22.
//

import Foundation
import MapKit

extension CLLocationCoordinate2D {
    
    func distance(to: CLLocationCoordinate2D) -> CLLocationDistance {
            MKMapPoint(self).distance(to: MKMapPoint(to))
        }
}
