//
//  NICApp.swift
//  NIC
//
//  Created by Cameron Slaughter on 4/28/25.
//


import SwiftUI

@main
struct NICApp: App {
    @StateObject private var badgeManager = BadgeManager()

    var body: some Scene {
        WindowGroup {
           // DesignTopicsView()
            AppTabBarView()
//            TopicListView(topics: sampleTopics)
                .environmentObject(badgeManager)
        }
    }
}
