//
//  ContentView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    
    let mapViewController = MapViewController()

    var body: some View {
        MapView(locations: mapViewController.setupList())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
