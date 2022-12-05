//
//  SeeAllContent.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 28/11/22.
//

import Foundation
import SwiftUI

struct SeeAllContent: View{
    
    let image: String
    let localName: String
    let type: String
    let isfree: Bool
    let distance: String
    
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 8)
            Image(image)
                .resizable()
                .frame(width: 28, height: 28)
            
            Spacer()
                .frame(width: 6)
            
            VStack(alignment: .leading){
                
                SeeAllTopText(localName: self.localName, distance: self.distance)
                
                Spacer()
                    .frame(height: 8)
                
                SeeAllBottomText(type: self.type, isFree: self.isfree)
            }.offset(y: 0)
        }
    }
}

struct SeeAllContent_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllComponent(image: "futebolBlue", localName: "Mini Ramp Lagoa do Araçá", type: "Campo de Futebol", isfree: false, distance: "50000")    }
}

