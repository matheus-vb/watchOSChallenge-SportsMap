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
                .font(.custom("SF-Pro-Display", size: 10))
                .frame(alignment: .leading)
            
            Spacer()
                .frame(width: 30)
            
            Text("\(distance) m")
                .fontWeight(.medium)
                .font(.custom("SF-Pro-Display", size: 10))
                .foregroundColor(Color("blue100"))
        }
    }
}

struct SeeAllTopText_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllTopText(localName: "Arena F12", distance: "200")
    }
}

