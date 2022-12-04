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
    
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                    .frame(height: 8)
                SeeOnMapView()
                Spacer()
                    .frame(height: 8)
                ScrollView{
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
}

struct ResultsTableView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsTableView(sportType: "Skate")
    }
}
