//
//  SeeOnListButton.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 28/11/22.
//

import Foundation
import SwiftUI

struct SeeOnListButton: View {
    
    let action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            
            ZStack{
                
                Circle()
                    .fill(Color("blue80"))
                    .frame(width: 32, height: 32)
                    .shadow(color: .black, radius: 3, y: 5)
                
                
                Image("list")
                    .frame(width: 16, height: 16)
                
            }
        }
        .buttonStyle(
            BorderedButtonStyle(
                tint: Color(.blue).opacity(0)
            )
        )
    }
}

struct SeeOnListButton_Previews: PreviewProvider {
    static var previews: some View {
        SeeOnListButton(action: {})
    }
}
