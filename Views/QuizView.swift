//
//  QuizView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import SwiftUI

struct QuizView: View {
    let topic: Topic
    @ObservedObject var viewModel: QuizViewModel
    @EnvironmentObject var badgeManager: BadgeManager
    
    var badgeImage: String {
        let badge = badgeManager.badges.filter { $0.id == topic.name }.first!
        return badge.imageName
    }
//Quiz is only take Accessibility as the only topic/badge to give out
    var body: some View {
        VStack(spacing: 20) {
            if !viewModel.isCompleted {
                Text("Question \(viewModel.currentQuestionIndex + 1) of \(viewModel.questions.count)")
                    .font(.headline)

                Text(viewModel.questions[viewModel.currentQuestionIndex].question)
                    .font(.title2)
                    .multilineTextAlignment(.center)

                ForEach(viewModel.questions[viewModel.currentQuestionIndex].answers, id: \.self) { option in
                    Button(action: {
                        viewModel.answerQuestion(with: option)
                        if viewModel.isCompleted && viewModel.score >= 4 {
                            badgeManager.earnBadge(forTopic: topic.name)
                        }
                    }) {
                        Text(option)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.accentColor.opacity(0.1))
                            .cornerRadius(10)
                    }
                }
            } else {
                VStack(spacing: 16) {
                    Text("Knowledge Check Completed!")
                        .font(.title)

                    Text("Score: \(viewModel.score) / \(viewModel.questions.count)")
                        .font(.headline)

                    if badgeManager.hasEarnedBadge(forTopic: topic.name) {
                        Image(badgeImage)
                            .resizable()
                        Label("Badge Earned", systemImage: "checkmark.seal.fill")
                            .foregroundColor(.green)
                    }

                    NavigationLink("Review Answers", destination: QuizReviewView(questions: viewModel.questions, userAnswers: viewModel.userAnswers))

                    NavigationLink("Back to Topics", destination: HomeScreen())
                }
            }
        }
        .padding()
        .navigationTitle(topic.name)
    }
}


//#Preview {
//    QuizView(topic: <#Topic#>, viewModel: <#QuizViewModel#>)
//}

