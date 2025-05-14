//
//  SearchObserableObject.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/14/25.
//

import Foundation


class SearchObserableObject: ObservableObject {
    var data: [Topic] = []
    @Published var searchResults: [Topic] = []
    
    init() {
        data = MockService.shared.getData()
    }
}
