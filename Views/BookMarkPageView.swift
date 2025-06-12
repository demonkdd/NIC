//
//  BookMarkPageView.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/12/25.
//

import SwiftUI

struct BookMarkPageView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("sf.symbol.chevron.compact.down", destination: QuizPageView())
        }
    }
}

#Preview {
    BookMarkPageView()
}
