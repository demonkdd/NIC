//
//  DashboardView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var badgeManager: BadgeManager
    @EnvironmentObject var profileVM: ProfileViewModel

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24) {
                Text("Welcome, \(profileVM.profile.name)")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Your Progress")
                        .font(.headline)

                    HStack {
                        ProgressView(
                            value: Float(badgeManager.earnedBadgeIDs.count),
                            total: Float(badgeManager.earnedBadgeIDs.count + 1) // Adjust if total is known
                        )
                        .frame(height: 10)
                        .accentColor(.accentColor)

                        Spacer()

                        Text("\(badgeManager.earnedBadgeIDs.count)/10")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }

                    Text(encouragementMessage())
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }

                NavigationLink(destination: TopicListView(topics: sampleTopics)) {
                    Label("Start Learning", systemImage: "book.fill")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Dashboard")
        }
    }

    func encouragementMessage() -> String {
        let earned = badgeManager.earnedBadgeIDs.count
        switch earned {
        case 10:
            return "You've earned every badge! Amazing work."
        case 7...9:
            return "You're almost there. Keep going!"
        case 4...6:
            return "Great progress! Keep it up!"
        case 1...3:
            return "Good start! Keep learning."
        default:
            return "Start your first topic and earn your first badge!"
        }
    }
}

#Preview {
    DashboardView()
}
