//
//  SeeOnMapView.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 04/12/22.
//

import Foundation
import SwiftUI

struct SeeOnMapView: View {
    
    var body: some View {
        ZStack{
            SeeOnMapBG()
            
            HStack{
                Spacer()
                    .frame(width: 8)
                
                Image("blueMap")
                
                Spacer()
                    .frame(width: 16)
                
                Text("Ver no Mapa")
                    .fontWeight(.medium)
                    .font(.custom("SF-Pro-Display", size: 12))
                    .foregroundColor(Color.white)
            
                Spacer()
                    .frame(width:8)
            }
        }
    }
}

struct SeeOnMapView_Previews: PreviewProvider {
    static var previews: some View {
        SeeOnMapView()
    }
}
