//
//  ContentView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 25/11/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ResultsTableView(sportType: "Futebol")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
