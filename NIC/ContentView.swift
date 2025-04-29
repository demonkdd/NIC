//
//  ContentView.swift
//  NIC
//
//  Created by Cameron Slaughter on 4/28/25.
//

import SwiftUI
import SwiftData

struct VibrantCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width:300)
            .textFieldStyle(.roundedBorder)
            .cornerRadius(20)
            .fixedSize(horizontal: true, vertical: false)
            .padding(.horizontal, 20)
            .autocorrectionDisabled(true)
    }
}

extension View {
    func vibrantCard() -> some View {
        self.modifier(VibrantCardModifier())
    }
}
                
  

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("What a joke")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
