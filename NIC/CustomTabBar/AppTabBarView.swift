//
//  AppTabBarView.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/8/25.
//

import SwiftUI




struct AppTabBarView: View {
    @State private var selection: String = "Home"
    var body: some View {
        
            TabView(selection: $selection) {
                ProfilePageView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                DomainSelectionView()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Domain")
                    }
                BookMarkPageView()
                    .tabItem {
                        Image(systemName: "bookmark")
                        Text("Favourites")
                    }
                Color.green
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Profile")
                    }
            }
            
        }
    }

#Preview {
    AppTabBarView()
        .environmentObject(BadgeManager())
}
//search bar needs suggestion but once they start typing it'll show them where what they're searching for exist
