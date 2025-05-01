//
//  UserProfileContainer.swift
//  NIC
//
//  Created by Cameron Slaughter on 4/29/25.
//

import SwiftUI

struct UserProfileContainer: View {
    @StateObject private var profileVM = ProfileViewModel()

    var body: some View {
        NavigationStack {
            DashboardView()
                .environmentObject(profileVM)
        }
        .onAppear {
            profileVM.load()
        }
    }
}
