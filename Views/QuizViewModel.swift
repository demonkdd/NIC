//
//  QuizViewModel.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import Foundation

class QuizViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var score = 0
    @Published var userAnswers: [String] = []
    @Published var isCompleted = false

    @Published var questions: [QuizQuestion]

    init(questions: [QuizQuestion]) {
        self.questions = questions
        self.userAnswers = Array(repeating: "", count: questions.count)
    }

    func answerQuestion(with choice: String) {
        guard !isCompleted else { return }

        userAnswers[currentQuestionIndex] = choice
        if questions[currentQuestionIndex].correctAnswer == choice {
            score += 1
        }

        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isCompleted = true
        }
    }

    func reset() {
        currentQuestionIndex = 0
        score = 0
        isCompleted = false
        userAnswers = Array(repeating: "", count: questions.count)
    }
}
