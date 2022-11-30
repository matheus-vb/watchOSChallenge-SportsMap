//
//  MapView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 29/11/22.
//

import Foundation
import SwiftUI
import MapKit

struct MapScreen: View {
    
    let locations: [Location]
        
    var body: some View {
        ZStack{
            MapView(locations: self.locations)
            ListButton()
        }
    }
}


struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen(locations: [
            Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141), sport: .basquete),
            Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076), sport: .futebol)
        ])
    }
}
