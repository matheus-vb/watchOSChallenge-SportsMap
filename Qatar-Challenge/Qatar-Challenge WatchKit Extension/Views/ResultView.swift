//
//  ResultContent.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 29/11/22.
//

import Foundation
import SwiftUI

struct ResultView: View {
    
    let exerciseType: String
    let distance: String
    let placeName: String
    let placeAdress: String
    let isItOpen: Bool
    let action: () -> Void
    
    
    var body: some View {
        
        VStack(spacing: 8){
            
            VStack(alignment: .center) {
                ResultTopText(exerciseType: self.exerciseType, distance: self.distance)
            }
            
            ResultBottomText(placeName: self.placeName, placeAddress: self.placeAdress, isItOpen: self.isItOpen)
                
            
            CalculateRouteButton(action: self.action)
            
        }
        
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(exerciseType: "Futebol", distance: "400", placeName: "Arena F12", placeAdress: "R. Francisco Leopoldo, 743", isItOpen: true, action: {})
    }
}
