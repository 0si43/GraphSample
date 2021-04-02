//
//  GraphSampleApp.swift
//  GraphSample WatchKit Extension
//
//  Created by nak-ts on 2021/04/02.
//

import SwiftUI

@main
struct GraphSampleApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
