//
//  FilterObservableObject.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/15/25.
//

import Foundation


class FilterObserableObject: ObservableObject {
    @Published var data: [Topic] = []
    @Published var searchResults: [Topic] = []
    
    
    init() {
        data = MockService.shared.getData()
    }
}
