//
//  BadgesView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//
import SwiftUI

struct BadgesView: View {
    @EnvironmentObject var badgeManager: BadgeManager
    @State private var shownBadges: Set<String> = []

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Your Badges")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)

                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 20) {
                        ForEach(badgeManager.badges, id: \.id) { badge in
                            BadgeCardView(
                                badge: badge,
                                isEarned: badgeManager.hasEarnedBadge(forTopic: badge.name),
                                shownBadges: $shownBadges
                            )
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Badges")
        }
    }
}

struct BadgeCardView: View {
    let badge: Badge
    let isEarned: Bool
    @Binding var shownBadges: Set<String>

    var body: some View {
        VStack(spacing: 8) {
            Image(badge.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .opacity(isEarned ? 1.0 : 0.25)
                .scaleEffect(shownBadges.contains(badge.name) ? 1 : 0.85)
                .animation(.easeIn(duration: 1.0), value: shownBadges.contains(badge.name))
                .onAppear {
                    if isEarned {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            shownBadges.insert(badge.name)
                        }
                    }
                }

            Text(badge.name)
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)

            Text(badge.description)
                .font(.caption2)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

