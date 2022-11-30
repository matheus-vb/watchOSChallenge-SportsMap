//
//  ListButton.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 30/11/22.
//

import Foundation
import SwiftUI

struct ListButton: View {
    
    var body: some View {
        
        VStack{
            Spacer()
            Button(action: {
                print("Botao pegando")
            }){
                Spacer()
                Image("blueList")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
        }
    }
}


struct ListButton_Previews: PreviewProvider {
    static var previews: some View {
        ListButton()
    }
}
