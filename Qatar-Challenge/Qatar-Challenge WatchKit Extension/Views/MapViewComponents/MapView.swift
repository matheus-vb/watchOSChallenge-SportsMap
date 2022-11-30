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
    
    let locations: [Location]
    @State private var region =  MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations){location in
            MapAnnotation(coordinate: location.coordinate){
                Image(location.sport.rawValue)
                    .resizable()
            }
        }
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(locations: [
            Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141), sport: .basquete),
            Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076), sport: .futebol)
        ])
    }
}

