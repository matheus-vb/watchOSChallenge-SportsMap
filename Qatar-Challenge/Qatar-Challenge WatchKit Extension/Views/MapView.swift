//
//  MapView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 29/11/22.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
