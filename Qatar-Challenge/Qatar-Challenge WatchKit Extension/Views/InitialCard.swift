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
            HStack {
                
                Spacer()
                    .frame(width: 4)
                
                Rectangle()
                    .frame(height: height)
                    .cornerRadius(16)
                    .foregroundColor(Color("gray100"))
                    .shadow(color: .black, radius: 20, y: 20)
                
                Spacer()
                    .frame(width: 4)
            }
            
            HStack{
                
                Spacer()
                    .frame(width: 14)
                
                Image(image)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text(title)
                    .font(.system(size: {
                        if title == "Musculação" {
                            return 14
                        } else {
                            return 16
                        }
                    }(), weight: .semibold))
                    .padding(8)
                
                Spacer()
            }
        }
    }
}

struct InitialCard_Previews: PreviewProvider {
    static var previews: some View {
        InitialCard(image: "musculacaoBlue", title: "Musculação", height: 90, action: {})
    }
}








