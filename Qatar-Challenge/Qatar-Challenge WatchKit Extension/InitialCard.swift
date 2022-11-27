//
//  InitialCard.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 26/11/22.
//

import Foundation
import SwiftUI

struct InitialCard: View {
    
    let image: String
    let title: String
    let height: CGFloat
    let action: () -> Void
    
    var body: some View {
        
        ZStack{
            
            Color.blue
                .ignoresSafeArea()
            
            HStack {
                
                Spacer()
                    .frame(width: 8)
                
                Rectangle()
                    .frame(height: height)
                    .cornerRadius(16)
                    .foregroundColor(.black)
                    .shadow(color: .black, radius: 20, y: 20)
                
                Spacer()
                    .frame(width: 8)
                
            }
            
            
            HStack{
                
                Image(image)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text(title)
                    .fontWeight(.semibold)
                    .padding(8)
            }
           
        }
        
        
    }
}

struct InitialCard_Previews: PreviewProvider {
    static var previews: some View {
        InitialCard(image: "natacaoBlue", title: "Natação", height: 90, action: {})
    }
}








