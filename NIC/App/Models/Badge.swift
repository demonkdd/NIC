//
//  Badge.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

struct Badge: Identifiable, Codable, Hashable {
    let id: String
    let name: String
    let description: String
    let imageName: String
}
