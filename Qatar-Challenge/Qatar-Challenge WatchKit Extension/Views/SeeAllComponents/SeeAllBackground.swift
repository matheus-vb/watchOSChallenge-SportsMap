//
//  SeeAllBackground.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 28/11/22.
//

import Foundation
import SwiftUI

struct SeeAllBackground: View {
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 0)
            
            Rectangle()
                .frame(height: 50)
                .cornerRadius(16)
                .foregroundColor(Color("gray100"))
                .shadow(color: .black, radius: 20, y: 20)
            
            Spacer()
                .frame(width: 0)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct SeeAllBackground_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllBackground()
    }
}

