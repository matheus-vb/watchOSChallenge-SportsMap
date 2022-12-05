//
//  HomeScreenCarouselVeiw.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by matheusvb on 26/11/22.
//

import Foundation
import SwiftUI

struct HomeScreenCarouselView: View {
    @StateObject var store = Store()
    
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "17181F")
                ForEach(store.cards) { card in
                    NavigationLink {
                        ResultsTableView(sportType: card.name)
                    } label: {
                        InitialCard(image: card.asset, title: card.name, height: 90, action: {})
                    }
                        .frame(width: 160)
                    
                        .scaleEffect(1.0 - abs(distance(card.id)) * 0.2)
                        .opacity(1.0 - abs(distance(card.id)) * 0.3)
                        .offset(y: myXOffset(card.id))
                        .zIndex(1.0 - abs(distance(card.id)) * 0.1)
                        .edgesIgnoringSafeArea(.all)
                        .buttonStyle(PlainButtonStyle())
                }
            }
            .highPriorityGesture(
                DragGesture()
                    .onChanged { value in
                        draggingItem = snappedItem + value.translation.height / 100
                    }
                    .onEnded { value in
                        withAnimation {
                            draggingItem = snappedItem + value.predictedEndTranslation.height / 100
                            draggingItem = round(draggingItem).remainder(dividingBy: Double(store.cards.count))
                            snappedItem = draggingItem
                        }
                    }
            )
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    func distance(_ card: Int) -> Double {
        return (draggingItem - Double(card)).remainder(dividingBy: Double(store.cards.count))
    }
    
    func myXOffset(_ card: Int) -> Double {
        let angle = Double.pi * 2 / Double(store.cards.count) * distance(card)
        return sin(angle) * 100
    }
    
}

struct HomeScreenCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenCarouselView()
    }
}
