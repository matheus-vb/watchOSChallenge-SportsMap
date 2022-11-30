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
        
        HStack{
            
            Spacer()
                .frame(width: 8)
            
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
            
            Spacer()
                .frame(width: 8)
            
        }
         
    }
}

struct CalculateRouteButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculateRouteButton(action: {})
    }
}

