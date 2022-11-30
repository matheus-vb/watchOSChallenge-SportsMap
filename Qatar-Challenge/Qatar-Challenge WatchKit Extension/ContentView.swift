//
//  ContentView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MapScreen(locations: [
            Location(name: "Dragon Gate Chinatown", coordinate: CLLocationCoordinate2D(latitude: 37.790989302572896, longitude: -122.40555239995598), sport: .basquete),
            Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076), sport: .futebol)
        ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
