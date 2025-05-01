//
//  SettingsManager.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

class SettingsManager: ObservableObject {
    @Published var soundEnabled: Bool {
        didSet {
            UserDefaults.standard.set(soundEnabled, forKey: "soundEnabled")
        }
    }

    init() {
        self.soundEnabled = UserDefaults.standard.bool(forKey: "soundEnabled")
    }
}
