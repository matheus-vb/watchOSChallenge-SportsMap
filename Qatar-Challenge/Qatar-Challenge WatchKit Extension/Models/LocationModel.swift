//
//  LocationModel.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 29/11/22.
//

import Foundation
import MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D?
    let sport: PinSports
    let category: String
    let free: Bool
    let address: String
    let time: String?
    let distance: Double?
}
