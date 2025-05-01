//
//  QuizQuestions.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//
import Foundation
struct QuizQuestion: Identifiable {
    let id = UUID()
    let question: String
    let options: [String]
    let correctAnswer: String
}

let quizQuestions: [String: [String]] = [
    "Typography": [
        "What considerations are made for dark mode?",
        "How does the principle of similarity work?",
        "Why is line height important in typography?",
        "Why are layout grids important in interface design?",
        "Why is accessibility essential in product design?"
    ],
    "Color Theory": [
        "What is baseline grid alignment?",
        "What is the purpose of Apple's HIG color guidance?",
        "What is semantic color use in dark mode?",
        "What makes an icon pixel-perfect?",
        "What is the role of visual rhythm?"
    ],
    "Layout Grids": [
        "How do you ensure readability in long-form text?",
        "What are dynamic type settings?",
        "What are design tokens?",
        "What is the main purpose of typography in design?",
        "What is a spring animation?"
    ],
    "HIG Basics": [
        "Why is accessibility essential in product design?",
        "What is a spring animation?",
        "How to avoid icon overload in UI?",
        "Why is line height important in typography?",
        "What's the difference between transitions and animations?"
    ],
    "Accessibility": [
        "What is a font token?",
        "Why is accessibility essential in product design?",
        "How does the principle of similarity work?",
        "How does font hierarchy impact user experience?",
        "What is the purpose of Apple's HIG color guidance?"
    ],
    "Gestalt Principles": [
        "What are WCAG standards?",
        "What is baseline grid alignment?",
        "What is a spacing token?",
        "What is a spring animation?",
        "What does the Gestalt principle of proximity imply?"
    ],
    "Motion Design": [
        "What is the 60-30-10 rule in color design?",
        "Why is motion design used in modern UIs?",
        "Why is iconography important in digital products?",
        "How do you ensure readability in long-form text?",
        "What are fixed, fluid, and adaptive grid types?"
    ],
    "Iconography": [
        "What are complementary colors on the color wheel?",
        "How can symmetry enhance visual hierarchy?",
        "What makes an icon pixel-perfect?",
        "What considerations are made for dark mode?",
        "What is the purpose of contrast in dark mode?"
    ],
    "Dark Mode": [
        "What does RGB stand for in digital design?",
        "Why is whitespace not 'empty' space?",
        "What does the Gestalt principle of proximity imply?",
        "What are stateful icons?",
        "What is HIG's guidance on interactive elements?"
    ],
    "Design Tokens": [
        "Which principle promotes clarity and deference in HIG?",
        "How do you ensure readability in long-form text?",
        "What are WCAG standards?",
        "How does dark mode improve battery life?",
        "How can symmetry enhance visual hierarchy?"
    ]
]
