//
//  UserProfile.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

struct UserProfile: Codable {
    var name: String
    var pronouns: String
    var email: String
    var avatar: String
    var earnedBadgeIDs: [String]
}
