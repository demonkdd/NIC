//
//  QuizQuestions.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//
import Foundation
struct QuizQuestion {
    let question: String
    let answers: [String]
    let correctAnswer: String
}

import Foundation

struct QuizDatabase {
    static func getQuestions(for topic: Topic) -> [QuizQuestion] {
        switch topic.title {
        case "Design":
            return [
                // 20 Sample QuizQuestions for Design domain
                QuizQuestion(
                    question: "What is the focus of Human-Centered Design?",
                    answers: ["Accessibility", "Animation", "Marketing", "Speed"],
                    correctAnswer: "Accessibility"
                ),
                QuizQuestion(
                    question: "Human-Centered Design improves?",
                    answers: ["User Experience", "Revenue Only", "Performance", "Marketing Reach"],
                    correctAnswer: "User Experience"
                ),
                QuizQuestion(
                    question: "What should animations feel like?",
                    answers: ["Slow", "Distracting", "Delightful", "Pointless"],
                    correctAnswer: "Delightful"
                ),
                QuizQuestion(
                    question: "When are animations helpful?",
                    answers: ["When guiding user focus", "When delaying tasks", "When confusing users", "Never"],
                    correctAnswer: "When guiding user focus"
                ),
                QuizQuestion(
                    question: "Consistency in UI builds?",
                    answers: ["Confusion", "Trust", "Boredom", "Delay"],
                    correctAnswer: "Trust"
                ),
                QuizQuestion(
                    question: "Which helps consistency?",
                    answers: ["Random layouts", "Standard patterns", "Frequent redesigns", "Changing icons"],
                    correctAnswer: "Standard patterns"
                ),
                QuizQuestion(
                    question: "What is a primary goal of UI design?",
                    answers: ["Clarity", "Obfuscation", "Complexity", "Length"],
                    correctAnswer: "Clarity"
                ),
                QuizQuestion(
                    question: "Which color scheme is best for readability?",
                    answers: ["High contrast", "Low contrast", "Monotone", "Random"],
                    correctAnswer: "High contrast"
                ),
                QuizQuestion(
                    question: "What is whitespace used for?",
                    answers: ["Improving legibility", "Wasting space", "Hiding content", "Adding confusion"],
                    correctAnswer: "Improving legibility"
                ),
                QuizQuestion(
                    question: "Why use icons in UI?",
                    answers: ["Visual cues", "Decoration only", "To confuse users", "No reason"],
                    correctAnswer: "Visual cues"
                ),
                QuizQuestion(
                    question: "Good design is often described as?",
                    answers: ["Intuitive", "Complicated", "Distracting", "Annoying"],
                    correctAnswer: "Intuitive"
                ),
                QuizQuestion(
                    question: "What does 'responsive design' mean?",
                    answers: ["Adapts to devices", "Fixed layout", "No scrolling", "One size fits all"],
                    correctAnswer: "Adapts to devices"
                ),
                QuizQuestion(
                    question: "Accessibility features help?",
                    answers: ["All users", "Only designers", "No one", "Just developers"],
                    correctAnswer: "All users"
                ),
                QuizQuestion(
                    question: "Which is a principle of good visual hierarchy?",
                    answers: ["Emphasize important elements", "Hide key actions", "Random font sizes", "No structure"],
                    correctAnswer: "Emphasize important elements"
                ),
                QuizQuestion(
                    question: "Microinteractions are?",
                    answers: ["Small feedback events", "Major redesigns", "Marketing tools", "Hardware issues"],
                    correctAnswer: "Small feedback events"
                ),
                QuizQuestion(
                    question: "What is a wireframe?",
                    answers: ["Basic layout sketch", "Final product", "Database", "Animation"],
                    correctAnswer: "Basic layout sketch"
                ),
                QuizQuestion(
                    question: "A persona in design is?",
                    answers: ["User archetype", "Font style", "Color palette", "Device"],
                    correctAnswer: "User archetype"
                ),
                QuizQuestion(
                    question: "Design systems help with?",
                    answers: ["Consistency", "Randomness", "Slower dev", "Hardware"],
                    correctAnswer: "Consistency"
                ),
                QuizQuestion(
                    question: "Which tool is used for prototyping?",
                    answers: ["Figma", "Xcode", "Slack", "Terminal"],
                    correctAnswer: "Figma"
                ),
                QuizQuestion(
                    question: "A call-to-action (CTA) should be?",
                    answers: ["Clear and visible", "Hidden", "Unlabeled", "Irrelevant"],
                    correctAnswer: "Clear and visible"
                ),
                QuizQuestion(
                    question: "Good UX design reduces?",
                    answers: ["User frustration", "Engagement", "Satisfaction", "Retention"],
                    correctAnswer: "User frustration"
                )
            ]
        case "Project Management":
            return [
                // 20 Sample QuizQuestions for Project Management domain
                QuizQuestion(
                    question: "What is the purpose of a project roadmap?",
                    answers: ["Outline major milestones", "Track bugs", "Design UI", "Write code"],
                    correctAnswer: "Outline major milestones"
                ),
                QuizQuestion(
                    question: "Agile methodology emphasizes?",
                    answers: ["Iterative development", "Waterfall planning", "No feedback", "Rigid roles"],
                    correctAnswer: "Iterative development"
                ),
                QuizQuestion(
                    question: "A sprint in Scrum is?",
                    answers: ["Time-boxed work period", "Bug report", "Design file", "Release version"],
                    correctAnswer: "Time-boxed work period"
                ),
                QuizQuestion(
                    question: "What is a backlog?",
                    answers: ["List of tasks/features", "Database", "Design tool", "Meeting"],
                    correctAnswer: "List of tasks/features"
                ),
                QuizQuestion(
                    question: "Who is responsible for product vision?",
                    answers: ["Product Owner", "Scrum Master", "Developer", "Designer"],
                    correctAnswer: "Product Owner"
                ),
                QuizQuestion(
                    question: "What is a Gantt chart used for?",
                    answers: ["Project scheduling", "UI design", "Coding", "Testing"],
                    correctAnswer: "Project scheduling"
                ),
                QuizQuestion(
                    question: "Daily stand-ups are for?",
                    answers: ["Team updates", "Lunch planning", "Code review", "Design critique"],
                    correctAnswer: "Team updates"
                ),
                QuizQuestion(
                    question: "What is scope creep?",
                    answers: ["Uncontrolled changes", "Bug fixing", "UI redesign", "Testing"],
                    correctAnswer: "Uncontrolled changes"
                ),
                QuizQuestion(
                    question: "Risk management involves?",
                    answers: ["Identifying and mitigating risks", "Ignoring problems", "Designing icons", "Writing tests"],
                    correctAnswer: "Identifying and mitigating risks"
                ),
                QuizQuestion(
                    question: "A deliverable is?",
                    answers: ["Tangible project output", "Meeting", "Design tool", "Bug report"],
                    correctAnswer: "Tangible project output"
                ),
                QuizQuestion(
                    question: "Who facilitates Scrum meetings?",
                    answers: ["Scrum Master", "Product Owner", "Developer", "Designer"],
                    correctAnswer: "Scrum Master"
                ),
                QuizQuestion(
                    question: "What is Kanban?",
                    answers: ["Visual workflow tool", "Design technique", "Programming language", "Testing framework"],
                    correctAnswer: "Visual workflow tool"
                ),
                QuizQuestion(
                    question: "Stakeholders are?",
                    answers: ["Anyone affected by project", "Only developers", "Only designers", "No one"],
                    correctAnswer: "Anyone affected by project"
                ),
                QuizQuestion(
                    question: "What is a project charter?",
                    answers: ["Document defining project", "Design mockup", "Codebase", "Test suite"],
                    correctAnswer: "Document defining project"
                ),
                QuizQuestion(
                    question: "Critical path method helps with?",
                    answers: ["Scheduling", "UI design", "Bug fixing", "Testing"],
                    correctAnswer: "Scheduling"
                ),
                QuizQuestion(
                    question: "What is a retrospective?",
                    answers: ["Team reflection meeting", "Design review", "Code release", "Bug fix"],
                    correctAnswer: "Team reflection meeting"
                ),
                QuizQuestion(
                    question: "What is MVP?",
                    answers: ["Minimum Viable Product", "Most Valuable Player", "Major Version Patch", "Mock Visual Prototype"],
                    correctAnswer: "Minimum Viable Product"
                ),
                QuizQuestion(
                    question: "Burn-down chart tracks?",
                    answers: ["Work remaining", "UI elements", "Code coverage", "Design assets"],
                    correctAnswer: "Work remaining"
                ),
                QuizQuestion(
                    question: "Which is a project constraint?",
                    answers: ["Time", "Color", "Font", "Animation"],
                    correctAnswer: "Time"
                ),
                QuizQuestion(
                    question: "Change requests should be?",
                    answers: ["Documented and reviewed", "Ignored", "Implemented blindly", "Deleted"],
                    correctAnswer: "Documented and reviewed"
                )
            ]
        case "Coding":
            return [
                // 20 Sample QuizQuestions for Coding domain
                QuizQuestion(
                    question: "What is a variable?",
                    answers: ["A storage for data", "A design tool", "A project plan", "A meeting"],
                    correctAnswer: "A storage for data"
                ),
                QuizQuestion(
                    question: "Which is a conditional statement?",
                    answers: ["if", "for", "var", "func"],
                    correctAnswer: "if"
                ),
                QuizQuestion(
                    question: "A function is used to?",
                    answers: ["Encapsulate code logic", "Design UI", "Manage projects", "Write documentation"],
                    correctAnswer: "Encapsulate code logic"
                ),
                QuizQuestion(
                    question: "What does 'loop' mean in coding?",
                    answers: ["Repeat code", "Design icon", "Schedule meeting", "Test app"],
                    correctAnswer: "Repeat code"
                ),
                QuizQuestion(
                    question: "Which is a data structure?",
                    answers: ["Array", "Storyboard", "Meeting", "Sprint"],
                    correctAnswer: "Array"
                ),
                QuizQuestion(
                    question: "What is debugging?",
                    answers: ["Finding and fixing errors", "Designing", "Planning", "Testing only"],
                    correctAnswer: "Finding and fixing errors"
                ),
                QuizQuestion(
                    question: "Which is a Swift keyword?",
                    answers: ["let", "draw", "roadmap", "milestone"],
                    correctAnswer: "let"
                ),
                QuizQuestion(
                    question: "What is an API?",
                    answers: ["Application Programming Interface", "Animation Plugin", "Project Item", "Array Property"],
                    correctAnswer: "Application Programming Interface"
                ),
                QuizQuestion(
                    question: "Which operator is used for assignment?",
                    answers: ["=", "==", "+", "/"],
                    correctAnswer: "="
                ),
                QuizQuestion(
                    question: "What is a class?",
                    answers: ["Blueprint for objects", "UI element", "Meeting", "Sprint"],
                    correctAnswer: "Blueprint for objects"
                ),
                QuizQuestion(
                    question: "Which is a Boolean value?",
                    answers: ["true", "string", "array", "function"],
                    correctAnswer: "true"
                ),
                QuizQuestion(
                    question: "What is version control used for?",
                    answers: ["Tracking code changes", "Designing", "Scheduling", "Testing"],
                    correctAnswer: "Tracking code changes"
                ),
                QuizQuestion(
                    question: "What is a comment in code?",
                    answers: ["Annotation for developers", "UI note", "Meeting agenda", "Sprint goal"],
                    correctAnswer: "Annotation for developers"
                ),
                QuizQuestion(
                    question: "Which is a loop type?",
                    answers: ["for", "next", "plan", "design"],
                    correctAnswer: "for"
                ),
                QuizQuestion(
                    question: "What is the output of print(2 + 2)?",
                    answers: ["4", "22", "2+2", "Error"],
                    correctAnswer: "4"
                ),
                QuizQuestion(
                    question: "Which is a string?",
                    answers: ["\"Hello\"", "123", "true", "[]"],
                    correctAnswer: "\"Hello\""
                ),
                QuizQuestion(
                    question: "What is an IDE?",
                    answers: ["Integrated Development Environment", "Design system", "Project plan", "Animation tool"],
                    correctAnswer: "Integrated Development Environment"
                ),
                QuizQuestion(
                    question: "Which is a type of bug?",
                    answers: ["Syntax error", "Design system", "Sprint", "Meeting"],
                    correctAnswer: "Syntax error"
                ),
                QuizQuestion(
                    question: "Which function prints output in Swift?",
                    answers: ["print()", "draw()", "run()", "show()"],
                    correctAnswer: "print()"
                ),
                QuizQuestion(
                    question: "What is the main file extension for Swift?",
                    answers: [".swift", ".java", ".py", ".txt"],
                    correctAnswer: ".swift"
                )
            ]
        // Fallback: if specific topics under Design are requested, return Design questions for now
        case "Human-Centered Design", "Animation Delight", "Consistency Matters":
            return QuizDatabase
                .getQuestions(
                    for: Topic(
                        title: "Design",
                        description: "",
                        iconName: "paintbrush",
                        details: "General design topic details."
                    )
                )
        default:
            return []
        }
    }
}

]
