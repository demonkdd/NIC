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
    var searchResults: [Topic] {
        if searchTerm.isEmpty {
            return oo.data
        } else {
            return oo.data.filter { $0.name.lowercased().contains(searchTerm.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
//                VStack {
                    if searchTerm.isEmpty {
                        //Text("Search for a topic")
                            //.font(.title.weight(.bold))
                        //Text("Find a topic you would like to study")
                            //.multilineTextAlignment(.center)
                    } else {
                        //so this is where you find the search logic. search results is a [topic] and the navigation link is the result from the search, the topic detail view is the page we want to bring up but to do that we need to feed it a topic and the topic we want is from the result
                        ForEach(searchResults, id: \.self) { result in
                            NavigationLink(result.name) {
                                TopicDetailView(topic: result)
                            }
                            
                        }
                    }
//                }
            }
            //.padding()
            //.frame(maxWidth: .infinity, maxHeight: .infinity)
            //.frame(height:100)
            .foregroundColor(.gray)
            //.navigationTitle("Search")
          
        }
        .searchable(text: $searchTerm)
//            ForEach(oo.searchResults, id: \.self) { Topic in
//                TopicListView(topics: sampleTopics)
//            }
            
        
//        .onChange(of: searchTerm) { searchTerm in
//            oo.searchResults = oo.data.filter({ Topic in
//                Topic.name.lowercased().contains(searchTerm.lowercased())
//            })
//        }
    }
}





#Preview {
    SearchView()
        .environmentObject(BadgeManager())
}

//{
//   Text(result.name)
//} label: {
//   Text(result.name)
//}
//NavigationLink(searchResults, destination: [Topic])
