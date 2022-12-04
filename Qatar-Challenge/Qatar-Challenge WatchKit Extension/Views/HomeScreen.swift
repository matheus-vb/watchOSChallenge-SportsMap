//
//  homeScreen.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by matheusvb on 02/12/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        HomeScreenCarouselView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
