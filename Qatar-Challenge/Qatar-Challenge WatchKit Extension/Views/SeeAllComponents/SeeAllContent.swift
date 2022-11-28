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
            Image(image)
                .resizable()
                .frame(width: 34, height: 34)
            
            Spacer()
                .frame(width: 8)
            
            VStack(alignment: .leading){
                
                SeeAllTopText(localName: self.localName, distance: self.distance)
                
                Spacer()
                    .frame(height: 4)
                
                SeeAllBottomText(type: self.type)
            }
        }
    }
}

struct SeeAllContent_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllContent(image: "futebolBlue", localName: "Arena F12", type: "Campo de Futebol", isfree: false, distance: "500")
    }
}

