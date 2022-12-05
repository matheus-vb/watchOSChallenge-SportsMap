//
//  SeeAllTopText.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 28/11/22.
//

import Foundation
import SwiftUI

struct SeeAllTopText: View {
    
    let localName: String
    let distance: String
    
    var body: some View {
        HStack{
            Text(localName)
                .fontWeight(.semibold)
                .lineLimit(2)
                .font(.custom("SF-Pro-Display", size: 10))
                .frame(width: 72, alignment: .leading)
            
            Spacer()
                .frame(width: 8)
            
            Text("\(distance) m")
                .fontWeight(.medium)
                .font(.custom("SF-Pro-Display", size: 10))
                .foregroundColor(Color("blue100"))
        }
    }
}

struct SeeAllTopText_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllComponent(image: "futebolBlue", localName: "Arena F12", type: "Campo de Futebol", isfree: false, distance: "50000")    }
}

