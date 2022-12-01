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
            Location(name: "Arena Recife",
                                             coordinate: CLLocationCoordinate2D(latitude: -8.042511416608455, longitude: -34.92634404282216),
                                             sport: PinSports.futebol,
                                             category: "Campo de Futebol",
                                             free: false,
                                             address: "R. Álvares Píres, 16 - Cordeiro",
                                             time: "07-23",
                                             asset: "futebolBlue",
                                             distance: nil)
        ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
