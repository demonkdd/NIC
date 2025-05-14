//
//  TopicReviewView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//
import SwiftUI

struct TopicReviewView: View {
    let topic: Topic

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Label(topic.name, systemImage: topic.symbol)
                .font(.largeTitle)
                .bold()

            Text(topic.description)
                .font(.body)

            Spacer()

            Link(destination: URL(string: topic.link)!) {
                Text("Dive Deeper")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
            }
//
//            NavigationLink(destination:
//                QuizView(
//                    topic: topic,
//                    viewModel: QuizViewModel(questions: sampleQuestions(for: topic.name))
//                )
//            ) {
//                Text("Take Quiz")
//                    .font(.headline)
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.accentColor)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//            }
        }
        .padding()
        .navigationTitle(topic.name)
    }

//    func sampleQuestions(for topicName: String) -> [QuizQuestion] {
//        return [
//            QuizQuestion(question: "What is \(topicName)?", options: ["A tool", "A principle", "A color", "A font"], correctAnswer: "A principle"),
//            QuizQuestion(question: "Why is \(topicName) important?", options: ["Efficiency", "User trust", "Clarity", "All of the above"], correctAnswer: "All of the above")
//        ]
//    }
}
