//
//  DistanceBetweenTwoPoints.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 04/12/22.
//

import Foundation
import MapKit
import SwiftUI

class DistanceBetweenTwoPoints {
    
    static let locationManager = LocationManager()
    
    static func calculate(to: CLLocationCoordinate2D) -> CLLocationDistance {
        return to.distance(to: locationManager.location?.coordinate ?? CLLocationCoordinate2D())
    }
}
