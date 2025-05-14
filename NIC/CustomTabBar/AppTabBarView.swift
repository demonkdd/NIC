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
                DesignTopicsView()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Topics")
                    }
                BookMarkPageView()
                    .tabItem {
                        Image(systemName: "bookmark")
                        Text("Favourites")
                    }
                SearchView()
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
// home page is the topic page, book marks available there as well as the profile search doesnt need a page it'll just be a search navigation bar is scrapped just a normal back button
//possibly no profile page will just go straight to badges
