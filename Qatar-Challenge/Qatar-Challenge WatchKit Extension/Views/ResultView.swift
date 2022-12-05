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
    let workingTime: String?
    let action: () -> Void
    
    let timeCheckController = TimeCheckController()
    
    var body: some View {
        VStack(spacing: 2){
            VStack(alignment: .center, spacing: 0) {
                ResultTopText(exerciseType: self.exerciseType, distance: self.distance)
            }
            
            HStack(spacing: 0){
                Spacer()
                    .frame(width: 8)
                ResultBottomText(placeName: self.placeName, placeAddress: self.placeAdress, isItOpen: timeCheckController.checkIfOpen(workingTime: workingTime))
                
            }
            
            Spacer()
                .frame(height: 0)
            CalculateRouteButton(action: self.action)
                .scaleEffect(0.8)
        }.offset(y: 12)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(exerciseType: "Futebol", distance: "40000", placeName: "Mini Ramp Lagoa do Araçá", placeAdress: "Estrada do Forte do Arraial N. do B Jesus, 477 - Cordeiro", isItOpen: true, workingTime: "06-22", action: {})
    }
}
