//
//  HomeView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var badgeManager: BadgeManager
    @EnvironmentObject var quizManager: QuizManager

    var body: some View {
        NavigationStack {
            let sampleTopics = allTopics.map {
                Topic(
                    name: $0,
                    symbol: quizManager.symbolForTopic($0), description: "",
                    link: ""
                )
            }
            VStack(spacing: 32) {
                Text("Welcome to the NIC Guide")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.top)

                NavigationLink(destination: TopicListView(topics: sampleTopics)) {
                    Label("Explore Topics", systemImage: "book.fill")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.8))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                NavigationLink(destination: BadgesView()) {
                    Label("View Badges", systemImage: "rosette")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.8))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                NavigationLink(destination: DashboardView()) {
                    Label("Your Dashboard", systemImage: "chart.bar.fill")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.purple.opacity(0.8))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("NIC Guide")
        }
    }
}
<<<<<<< HEAD
=======
#Preview {
    HomeView()
}
>>>>>>> main
