
//
//  QuizManager.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import SwiftUI

class QuizManager: ObservableObject {
    @Published var topicScores: [String: Double] = [:]

    func symbolForTopic(_ topic: String) -> String {
        switch topic {
        case "Accessibility": return "figure.wave"
        case "Typography": return "textformat"
        case "Consistency": return "circle.grid.cross"
        case "Clarity": return "eye"
        case "User Control": return "slider.horizontal.3"
        case "Deference": return "arrow.down.right"
        case "Adaptivity": return "rectangle.and.arrow.up.right.and.arrow.down.left.slash"
        case "Aesthetic Integritty": return "sparkles"
        case "SF Symbols": return "square.grid.2x2"
        case "Depth": return "cube"
        default: return "questionmark"
        }
    }

    func updateScore(for topic: String, correctAnswers: Int, totalQuestions: Int) {
        let score = Double(correctAnswers) / Double(totalQuestions)
        topicScores[topic] = score
    }
}

