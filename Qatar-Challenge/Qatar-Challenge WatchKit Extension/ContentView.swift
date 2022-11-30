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
            Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141), sport: .basquete),
            Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076), sport: .futebol)
        ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
