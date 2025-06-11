//
//  ProfilePage.swift
//  NIC
//
//  Created by Cameron Slaughter on 4/29/25.
//

import Foundation
import SwiftUI
import PhotosUI
import SwiftData

struct ProfilePage: View {
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
                NavigationLink("Badges", destination: BadgesView())
                
            }
        }
    }
}

#Preview {
    ProfilePage()
}
//need a skip button on profile set up

