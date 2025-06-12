//
//  QuizReviewView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import SwiftUI

struct QuizReviewView: View {
    let questions: [QuizQuestion]
    let userAnswers: [String]

    var body: some View {
        List(questions.indices, id: \.self) { index in
            let question = questions[index]
            let userAnswer = userAnswers[index]
            let isCorrect = userAnswer == question.correctAnswer

            VStack(alignment: .leading, spacing: 8) {
                Text("Q: \(question.question)")
                    .font(.headline)

                Text("Your Answer: \(userAnswer)")
                    .foregroundColor(isCorrect ? .green : .red)

                if !isCorrect {
                    Text("Correct Answer: \(question.correctAnswer)")
                        .foregroundColor(.blue)
                }
            }
            .padding(.vertical, 6)
        }
        .navigationTitle("Knowledge Check Review")
    }
}
