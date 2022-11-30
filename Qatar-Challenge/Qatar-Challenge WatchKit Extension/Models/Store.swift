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
        
        cards.append(HomeCardModel(id: 0, name: "Futebol", asset: "futebolBlue"))
        cards.append(HomeCardModel(id: 1, name: "Caminhada", asset: "corridaBlue"))
        cards.append(HomeCardModel(id: 2, name: "Tênis", asset: "tenisBlue"))
        cards.append(HomeCardModel(id: 3, name: "Basquete", asset: "basqueteBlue"))
        cards.append(HomeCardModel(id: 4, name: "Skate", asset: "skateBlue"))
        cards.append(HomeCardModel(id: 5, name: "Ciclismo", asset: "bicicletaBlue"))
        cards.append(HomeCardModel(id: 6, name: "Musculação", asset: "musculacaoBlue"))
        cards.append(HomeCardModel(id: 7, name: "Vôlei", asset: "voleiBlue"))
        cards.append(HomeCardModel(id: 8, name: "Natação", asset: "natacaoBlue"))
    }
}

/*
 Futebol
 Caminhada
 Tenis
 Basquete
 Skate
 Ciclismo
 Musculacao
 Volei
 Natacao
 */
