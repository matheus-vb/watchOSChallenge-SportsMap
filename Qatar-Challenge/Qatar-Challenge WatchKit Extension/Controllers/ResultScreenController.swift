//
//  ResultScreen.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by thaxz on 29/11/22.
//

import Foundation
import SwiftUI

struct ResultScreenController: View {
    var body: some View {
        
        ZStack{

            Color("black100")
                .ignoresSafeArea()
            
            VStack(){
                
                ResultView(exerciseType: "Futebol", distance: "400", placeName: "Arena F12", placeAdress: "R. Francisco Leopoldo, 743", isItOpen: true, workingTime: "06-22", action: {})
                
            }
            
        }
        
    }
}

struct ResultScreen_Previews: PreviewProvider {
    static var previews: some View {
        ResultScreenController()
    }
}
