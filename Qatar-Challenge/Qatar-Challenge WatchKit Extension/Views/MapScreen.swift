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
