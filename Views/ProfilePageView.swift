//
//  ProfilePageView.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/8/25.
//

import SwiftUI
import PhotosUI

struct ProfilePageView: View {
    @EnvironmentObject var badgeManager: BadgeManager
    @State private var Name: String = ""
    @State private var PreferredName: String = ""
    @State private var Email: String = ""
    @State private var Pronouns: String = ""
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    var body: some View {
        NavigationStack {
            VStack {
                
                PhotosPicker("Select Avatar", selection: $avatarItem, matching: .images)
                avatarImage?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                TextField("Name", text: $Name)
                    .vibrantCard()
                TextField("Preferred Name", text: $PreferredName)
                    .vibrantCard()
                TextField("Email", text: $Email)
                    .vibrantCard()
                TextField("Pronouns", text: $Pronouns)
                    .vibrantCard()
                HStack {
                    ProgressView(
                        value: Float(badgeManager.earnedBadgeIDs.count),
                        total: Float(badgeManager.earnedBadgeIDs.count + 1) // Adjust if total is known
                    )
                    .frame(height: 10)
                    .accentColor(.accentColor)

                    Spacer()

                    Text("\(badgeManager.earnedBadgeIDs.count)/10")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
            }
            NavigationLink("Skip", destination: DomainSelectionView())
        }
    }
}

#Preview {
    ProfilePageView()
        .environmentObject(BadgeManager())
}
