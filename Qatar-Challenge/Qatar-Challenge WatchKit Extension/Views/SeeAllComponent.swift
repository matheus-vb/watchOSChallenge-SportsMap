//
//  seeAllComponent.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 28/11/22.
//

import Foundation
import SwiftUI

struct SeeAllComponent: View {
    
    let image: String
    let localName: String
    let type: String
    let isfree: Bool
    let distance: String
    
    var body: some View {
        ZStack{
            SeeAllBackground()
            
            SeeAllContent(image: self.image, localName: self.localName, type: self.type, isfree: self.isfree, distance: self.distance)
            
        }
        .onTapGesture {
            print("clicou")
        }
    }
}

struct SeeAllComponent_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllComponent(image: "futebolBlue", localName: "Arena F12", type: "Campo de Futebol", isfree: false, distance: "500")
    }
}
