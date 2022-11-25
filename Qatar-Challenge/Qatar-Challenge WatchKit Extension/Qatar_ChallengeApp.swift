//
//  Qatar_ChallengeApp.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 25/11/22.
//

import SwiftUI

@main
struct Qatar_ChallengeApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
