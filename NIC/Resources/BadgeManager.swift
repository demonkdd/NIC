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
//maybe have the badge icon let the user know how many badges they've already earned
    init() {
        self.badges = [
            Badge(id: "Accessibility", name: "Accessibility", description: "Design for everyone.", imageName: "AccessibilityBadge"),
            Badge(id: "Aesthetic Integritty", name: "Aesthetic Integritty", description: "Appealing visuals.", imageName: "AestheticIntegrityBadge"),
            Badge(id: "Consistency", name: "Consistency", description: "Be consistent.", imageName: "ConsistencyBadge"),
            Badge(id: "Deference", name: "Deference", description: "Let content lead.", imageName: "DeferenceBadge"),
            Badge(id: "Depth", name: "Depth", description: "Use layered design.", imageName: "DepthBadge"),
            Badge(id: "SF Symbols", name: "SF Symbols", description: "Communicate with symbols.", imageName: "SfSymbolsBadge"),
            Badge(id: "Typography", name: "Typography", description: "Communicate with type.", imageName: "TypographyBadge"),
            Badge(id: "User Control", name: "User Control", description: "Let users decide.", imageName: "UserControlBadge"),
            Badge(id: "Colors", name: "Colors", description: "Use color wisely.", imageName: "ColorBadge"),
            Badge(id: "Layout", name: "Layout", description: "Use layout wisely.", imageName: "LayoutBadge")
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
