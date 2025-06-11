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
            Badge(id: "Accessibility", name: "Accessibility", description: "Design for everyone.", imageName: "Acc Background Removed"),
            Badge(id: "Aesthetic Integritty", name: "Aesthetic Integritty", description: "Appealing visuals.", imageName: "aest Background Removed"),
            Badge(id: "Consistency", name: "Consistency", description: "Be consistent.", imageName: "image Background Removed"),
            Badge(id: "Deference", name: "Deference", description: "Let content lead.", imageName: "Deference Background Removed"),
            Badge(id: "Depth", name: "Depth", description: "Use layered design.", imageName: "Depth Background Removed"),
            Badge(id: "SF Symbols", name: "SF Symbols", description: "Communicate with symbols.", imageName: "SFsym Background Removed"),
            Badge(id: "Typography", name: "Typography", description: "Communicate with type.", imageName: "TYPO background Removed"),
            Badge(id: "User Control", name: "User Control", description: "Let users decide.", imageName: "UserCOn Background Removed"),
            Badge(id: "Colors", name: "Colors", description: "Use color wisely.", imageName: "color2 Background Removed"),
            Badge(id: "Layout", name: "Layout", description: "Use layout wisely.", imageName: "layout Background Removed")
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
