//
//  StorageManager.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

class StorageManager {
    static func save<T: Encodable>(_ object: T, forKey key: String) {
        if let encoded = try? JSONEncoder().encode(object) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }

    static func load<T: Decodable>(forKey key: String, as type: T.Type) -> T? {
        if let data = UserDefaults.standard.data(forKey: key),
           let decoded = try? JSONDecoder().decode(type, from: data) {
            return decoded
        }
        return nil
    }
}

