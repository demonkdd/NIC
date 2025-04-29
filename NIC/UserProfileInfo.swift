//
//  UserProfileInfo.swift
//  NIC
//
//  Created by Cameron Slaughter on 4/29/25.
//

import Foundation
import SwiftData
import PhotosUI

class Profile: Identifiable {
    var id: UUID = UUID()
    var name: String = ""
    var preferredName: String = ""
    var email: String = ""
    var pronouns: String = ""
    var avatar: URL?
    
    init(id: UUID, name: String, preferredName: String, email: String, pronouns: String, avatar: URL? = nil) {
        self.id = id
        self.name = name
        self.preferredName = preferredName
        self.email = email
        self.pronouns = pronouns
        self.avatar = avatar
    }
}
