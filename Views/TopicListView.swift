//
//  TopicListView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//
import SwiftUI

struct TopicListView: View {
    let topics: [Topic]
    @EnvironmentObject var badgeManager: BadgeManager

    var body: some View {
        List(topics, id: \.id) { topic in
            NavigationLink(destination: TopicDetailView(topic: topic)) {
                HStack(spacing: 16) {
                    Image(systemName: topic.symbol)
                        .font(.system(size: 24))
                        .foregroundStyle(.blue)
                        .symbolEffect(.pulse)
                        .frame(width: 32)

                    VStack(alignment: .leading) {
                        Text(topic.name)
                            .font(.headline)

                        if badgeManager.hasEarnedBadge(forTopic: topic.name) {
                            Label("Badge Earned", systemImage: "checkmark.seal.fill")
                                .font(.caption)
                                .foregroundColor(.green)
                        }
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .navigationTitle("Design Topics")
    }
}



