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
    let isFree: Bool
    
    var body: some View {
        Text(isFree == true ? "\(type)" : "\(type) • $")
            .fontWeight(.medium)
            .font(.custom("SF-Pro-Display", size: 10))
            .foregroundColor(Color("white80"))
    }
}

struct SeeAllBottomText_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllComponent(image: "futebolBlue", localName: "Arena F12", type: "Campo de Futebol", isfree: false, distance: "500")    }
}
