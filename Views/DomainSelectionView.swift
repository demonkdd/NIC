//
//  DomainSelectionView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import SwiftUI

struct DomainSelectionView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Choose a Domain")
                    .font(.title)
                    .bold()

<<<<<<< HEAD
                NavigationLink(destination: HomeView()) {
=======
                NavigationLink(destination: DesignTopicsView()) {
>>>>>>> main
                    Label("Design", systemImage: "paintbrush")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal)

                Label("Project Management", systemImage: "calendar.badge.clock")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(.gray)
                    .cornerRadius(12)
                    .padding(.horizontal)

                Label("Coding", systemImage: "chevron.left.slash.chevron.right")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(.gray)
                    .cornerRadius(12)
                    .padding(.horizontal)

                Spacer()
            }
            .padding()
            .navigationTitle("Domains")
        }
    }
}
<<<<<<< HEAD

=======
#Preview {
    DomainSelectionView()
        .environmentObject(BadgeManager())
}
>>>>>>> main
