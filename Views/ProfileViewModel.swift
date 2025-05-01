//
//  ProfileViewModel.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile = UserProfile(name: "", pronouns: "", avatar: "", earnedBadgeIDs: [])

    func save() {
        if let encoded = try? JSONEncoder().encode(profile) {
            UserDefaults.standard.set(encoded, forKey: "userProfile")
        }
    }

    func load() {
        if let data = UserDefaults.standard.data(forKey: "userProfile"),
           let decoded = try? JSONDecoder().decode(UserProfile.self, from: data) {
            profile = decoded
        }
    }
}
