//
//  SeeAllBottomText.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 28/11/22.
//

import Foundation
import SwiftUI

struct SeeAllBottomText: View {
    
    let type: String
    
    var body: some View {
        Text("\(type)  •  $")
            .fontWeight(.medium)
            .font(.custom("SF-Pro-Display", size: 10))
            .foregroundColor(.red)
    }
}

struct SeeAllBottomText_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllBottomText(type: "Campo de Futebol")
    }
}
