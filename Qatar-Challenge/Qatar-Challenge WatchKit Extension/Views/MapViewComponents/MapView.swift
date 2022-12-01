//
//  MapView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 30/11/22.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var locationManager = LocationManager()
    
    var region: Binding<MKCoordinateRegion>? {
        guard let location = locationManager.location else {
            return MKCoordinateRegion.goldenGateRegion().getBinding()
        }
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
        return region.getBinding()
    }
    
    let locations: [Location]
    
    var body: some View {
        if let region = region {
            Map(coordinateRegion: region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: locations){location in
                MapAnnotation(coordinate: location.coordinate ?? CLLocationCoordinate2D()){
                    Image(location.sport.rawValue)
                        .resizable()
                }
            }
            .ignoresSafeArea()
            
        }
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(locations: [
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
