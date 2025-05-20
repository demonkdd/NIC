//
//  FilterView.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/15/25.
//

import SwiftUI

struct FilterView: View {
    @StateObject var oo = FilterObserableObject()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationView {
            List(searchTerm.isEmpty ? oo.data : oo.searchResults) { Topic in
                TopicListView(topics: sampleTopics)
            }
            .navigationTitle("Filters")
        }
        .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always))
        .onChange(of: searchTerm) { searchTerm in
            oo.searchResults = oo.data.filter({ Topic in
                Topic.name.lowercased().contains(searchTerm.lowercased())
            })
        }
    }
}
    
    
#Preview {
    FilterView()
}
