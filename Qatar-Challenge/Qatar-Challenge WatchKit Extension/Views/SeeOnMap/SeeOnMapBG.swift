//
//  SeeOnMapBG.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 04/12/22.
//

import Foundation
import SwiftUI

struct SeeOnMapBG: View {
    
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 4)
            
            Rectangle()
                .frame(height: 30)
                .cornerRadius(16)
                .foregroundColor(Color("gray100"))
                .shadow(color: .black, radius: 20, y: 20)
            
            Spacer()
                .frame(width: 4)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct SeeOnMapBG_Previews: PreviewProvider {
    static var previews: some View {
        SeeOnMapBG()
    }
}
