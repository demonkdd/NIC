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
    @StateObject private var vm = QuizViewModel(questions: [])
// @state object from quiz page view here
    var body: some Scene {
        WindowGroup {
           OnboardingView()
            //QuizPageView()
            //OnboardingView()
//            TopicListView(topics: sampleTopics)
                .environmentObject(badgeManager)
        }
    }
}
