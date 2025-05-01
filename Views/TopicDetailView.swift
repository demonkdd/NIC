//
//  TopicDetailView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//
import SwiftUI

struct TopicSection: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let points: [String]
}

struct TopicDetailView: View {
    let topic: Topic

    // Placeholder data — ideally fetched or defined per topic
    let sections: [TopicSection] = [
        TopicSection(
            title: "Key Principles",
            points: [
                "Understand the topic's impact on user experience.",
                "Follow Human Interface Guidelines closely.",
                "Apply the principle consistently in your app."
            ]
        ),
        TopicSection(
            title: "Examples",
            points: [
                "Show how it's used in real Apple apps.",
                "Use before/after UI comparisons.",
                "Incorporate SF Symbols where appropriate."
            ]
        )
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text(topic.name)
                    .font(.largeTitle)
                    .bold()

                ForEach(sections) { section in
                    VStack(alignment: .leading, spacing: 12) {
                        Text(section.title)
                            .font(.title2)
                            .bold()

                        ForEach(Array(section.points), id: \.self) { point in
                            Label(point, systemImage: "circle.fill")
                                .font(.body)
                                .foregroundColor(.primary)
                        }
                    }
                }

                Link(destination: URL(string: topic.link)!) {
                    Text("Read more on Apple’s Human Interface Guidelines")
                        .font(.callout)
                        .underline()
                        .foregroundColor(.blue)
                        .padding(.top)
                }
            }
            .padding()
        }
        .navigationTitle(topic.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

