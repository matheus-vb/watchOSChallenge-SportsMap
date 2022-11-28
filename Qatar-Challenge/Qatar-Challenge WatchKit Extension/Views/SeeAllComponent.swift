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
            
            HStack{
                Spacer()
                    .frame(width: 8)
                
                Rectangle()
                    .frame(height: 50)
                    .cornerRadius(16)
                    .foregroundColor(Color("gray100"))
                    .shadow(color: .black, radius: 20, y: 20)
                
                Spacer()
                    .frame(width: 8)
            }
            
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 34, height: 34)
                
                Spacer()
                    .frame(width: 8)
                
                VStack(alignment: .leading){
                    
                    Text(localName)
                        .fontWeight(.semibold)
                        .font(.custom("SF-Pro-Display", size: 10))
                        .frame(alignment: .leading)
                    
                    Spacer()
                        .frame(height: 4)
                    
                    Text(type)
                        .fontWeight(.medium)
                        .font(.custom("SF-Pro-Display", size: 10))
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct SeeAllComponent_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllComponent(image: "futebolBlue", localName: "Arena F12", type: "Campo de Futebol", isfree: false, distance: "500")
    }
}
