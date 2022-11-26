//
//  Store.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by matheusvb on 26/11/22.
//

import Foundation
import SwiftUI

class Store: ObservableObject {
    @Published var cards: [HomeCardModel]
    
    init() {
        cards = []
        
        for i in 0...7 {
            let new = HomeCardModel(id: i, name: "Numero \(i)", asset: "basqueteBlue")
            cards.append(new)
        }
    }
}
