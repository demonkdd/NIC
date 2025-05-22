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
<<<<<<< HEAD
    var body: some View {
        NavigationView {
            VStack {
                Text("Search for a topic")
                    .font(.title.weight(.bold))
                Text("Find a topic you would like to study")
                    .multilineTextAlignment(.center)
                
                var searchResults: [Topic] {
                    if searchTerm.isEmpty {
                        return oo.data
                    } else {
                        return oo.data.filter { $0.name.lowercased().contains(searchTerm.lowercased())
                        }
                    }
                }
                
                var body: some View {
                    NavigationView {
                        VStack {
                            if searchTerm.isEmpty {
                                Text("Search for a topic")
                                    .font(.title.weight(.bold))
                                Text("Find a topic you would like to study")
                                    .multilineTextAlignment(.center)
                            } else {
                                ForEach(searchResults, id: \.self) { result in
                                    Text(result.name)
                                }
                            }
                            
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
        }
        
=======
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
                VStack {
                    if searchTerm.isEmpty {
                        Text("Search for a topic")
                            .font(.title.weight(.bold))
                        Text("Find a topic you would like to study")
                            .multilineTextAlignment(.center)
                    } else {
                        ForEach(searchResults, id: \.self) { result in
                            NavigationLink {
                                Text(result.name)
                            } label: {
                                Text(result.name)
                            }
                        }
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.gray)
            .navigationTitle("Search")
          
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
>>>>>>> main
    }
}


<<<<<<< HEAD
        #Preview {
            SearchView()
        }
=======



#Preview {
    SearchView()
        .environmentObject(BadgeManager())
}
>>>>>>> main
