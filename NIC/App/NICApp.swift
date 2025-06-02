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
// @state object from quiz page view here
    var body: some Scene {
        WindowGroup {
           // DesignTopicsView()
            //QuizPageView()
            LaunchScreen()
//            TopicListView(topics: sampleTopics)
                .environmentObject(badgeManager)
        }
    }
}
