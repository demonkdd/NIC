//
//  Topic.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

struct Topic: Identifiable, Codable, Hashable {
    let id = UUID()
    let name: String
    let symbol: String
    let description: String
    let link: String
}
