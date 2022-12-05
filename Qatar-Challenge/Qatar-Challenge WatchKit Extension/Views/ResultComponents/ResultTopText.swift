//
//  ResultTopText.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 29/11/22.
//

import Foundation
import SwiftUI

struct ResultTopText: View {
    
    let exerciseType: String
    let distance: String
    
    var body: some View {
        
        VStack {
            
            HStack(alignment: .lastTextBaseline, spacing: 4){
              
                Text("\(distance)")
                    .font(.system(size: 36, weight: .medium))
                    .foregroundColor(.white)
                
                Text("m")
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(Color("blue100"))
                
            }
        }
    }
}

struct ResultTopText_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(exerciseType: "Futebol", distance: "40000", placeName: "Mini Ramp Lagoa do Araçá", placeAdress: "Estrada do Forte do Arraial N. do B Jesus, 477 - Cordeiro", isItOpen: true, workingTime: "06-22", action: {})    }
}
