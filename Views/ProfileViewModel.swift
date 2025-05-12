//
//  ProfileViewModel.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

class ProfileViewModel: ObservableObject {
<<<<<<< HEAD
    @Published var profile = UserProfile(name: "", pronouns: "", avatar: "", earnedBadgeIDs: [])
=======
    @Published var profile = UserProfile(name: "", pronouns: "",email:"" , avatar: "", earnedBadgeIDs: [])
>>>>>>> main

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
<<<<<<< HEAD
=======
//need a skip button on profile set up
//only need to save name and badges, and book marks other stuff doesnt matter
// .presentationDetents([.medium]) this is for sheets to tell it how much screen to cover
>>>>>>> main
