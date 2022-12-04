//
//  ResultsTableView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by acrn on 01/12/22.
//

import SwiftUI

struct ResultsTableView: View {
    
    let sportType: String
    let models = LocationStore()
    let mapViewController = MapViewController()
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                NavigationLink{
                    MapView(locations: mapViewController.setupList())
                }label:{
                    SeeOnMapView()
                }.buttonStyle(
                    PlainButtonStyle()
                )
                VStack(spacing: 8){
                    ForEach(models.modelDict[sportType]!) { loc in
                        SeeAllComponent(image: loc.asset, localName: loc.name, type: loc.category, isfree: loc.free, distance: "500")
                            .listRowBackground(Color.clear)
                    }
                }
            }
        }
    }
}

struct ResultsTableView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsTableView(sportType: "Skate")
    }
}
