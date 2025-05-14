//
//  Untitled.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//
import SwiftUI

struct RootView: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    @StateObject private var profileVM = ProfileViewModel()
    @StateObject private var badgeManager = BadgeManager()

    var body: some View {
        Group {
            if hasSeenOnboarding {
                UserProfileContainer()
                    .environmentObject(profileVM)
                    .environmentObject(badgeManager)
            }
            else {
                OnboardingView()
                    .environmentObject(badgeManager)
            }
        }
    }
}
