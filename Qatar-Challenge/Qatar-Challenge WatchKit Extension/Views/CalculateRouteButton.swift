//
//  SeeOnMapButton.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 28/11/22.
//

import Foundation
import SwiftUI

struct CalculateRouteButton: View {
    
    let action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            
            Text("Traçar rota")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                
        }.buttonStyle(
            
            BorderedButtonStyle(
                tint: Color("blue80").opacity(100)
            )
        )

        
        
    }
}

struct CalculateRouteButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculateRouteButton(action: {})
    }
}

