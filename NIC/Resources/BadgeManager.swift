//
//  BadgeManager.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

class BadgeManager: ObservableObject {
    @Published var earnedBadgeIDs: [String] = []
    @Published var badges: [Badge] = []

    init() {
        self.badges = [
            Badge(id: "Accessibility", name: "Accessibility", description: "Design for everyone.", imageName: "AccessibilityB"),
            Badge(id: "Adaptivity", name: "Adaptivity", description: "Adjust to user needs.", imageName: "AdaptivityB"),
            Badge(id: "Aesthetics", name: "Aesthetics", description: "Appealing visuals.", imageName: "AestheticB"),
            Badge(id: "Clarity", name: "Clarity", description: "Make things clear.", imageName: "ClarityB"),
            Badge(id: "Consistency", name: "Consistency", description: "Be consistent.", imageName: "ConsistencyB"),
            Badge(id: "Deference", name: "Deference", description: "Let content lead.", imageName: "DeferenceB"),
            Badge(id: "Depth", name: "Depth", description: "Use layered design.", imageName: "DepthB"),
            Badge(id: "Icons", name: "Icons", description: "Communicate with symbols.", imageName: "IconsB"),
            Badge(id: "Typography", name: "Typography", description: "Communicate with type.", imageName: "TypeB"),
            Badge(id: "User Control", name: "User Control", description: "Let users decide.", imageName: "UserControlB")
        ]
    }

    func hasEarnedBadge(forTopic topic: String) -> Bool {
        earnedBadgeIDs.contains(topic)
    }

    func earnBadge(forTopic topic: String) {
        if !earnedBadgeIDs.contains(topic) {
            earnedBadgeIDs.append(topic)
            save()
        }
    }

    private func save() {
        if let data = try? JSONEncoder().encode(earnedBadgeIDs) {
            UserDefaults.standard.set(data, forKey: "earnedBadgeIDs")
        }
    }

    func load() {
        if let data = UserDefaults.standard.data(forKey: "earnedBadgeIDs"),
           let decoded = try? JSONDecoder().decode([String].self, from: data) {
            earnedBadgeIDs = decoded
        }
    }
}
