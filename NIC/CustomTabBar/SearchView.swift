//
//  SearchView.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/14/25.
//

import SwiftUI

struct SearchView: View {
    @StateObject var oo = SearchObserableObject()
    @State private var searchTerm = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Search for a topic")
                    .font(.title.weight(.bold))
                Text("Find a topic you would like to study")
                    .multilineTextAlignment(.center)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.gray)
            .navigationTitle("Search")
          
        }
        .searchable(text: $searchTerm) {
            ForEach(oo.searchResults) { Topic in
                DesignTopicsView()
            }
        }
        .onChange(of: searchTerm) { searchTerm in
            oo.searchResults = oo.data.filter({ Topic in
                Topic.name.lowercased().contains(searchTerm.lowercased())
            })
        }
    }
}





#Preview {
    SearchView()
}
