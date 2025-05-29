//
//  QuizPageView.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/20/25.
//

import SwiftUI

struct QuizPageView: View {
   @StateObject private var vm = QuizViewModel(questions: [])
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    @State private var quiz: QuizQuestion?
    @State private var testTopic = Topic(name: "Design", symbol: "", description: "", link: "")
    @State private var testQuestions: [QuizQuestion] = []
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Button("Load Questions") {
                    testQuestions = QuizDatabase.getQuestions(for: testTopic )
                }
                
                Button("Load into vm") {
                    vm.questions = testQuestions
                }
                Text("\(vm.questions.isEmpty)")
                
                Text("is populated: \(!testQuestions.isEmpty)")
                Button("Knowledge Check") {
                    showingConfirmation = true
                    
                }
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .confirmationDialog("Would you like to start the Knowledge Check?", isPresented: $showingConfirmation) {
                    NavigationLink(destination: QuizView(topic: sampleTopics[0], viewModel: vm)) {
                        Text("Begin")
                    }
                    Button("Cancel", role: .cancel) { }
                }
                
            }
            .onAppear {
//                vm.questions = QuizDatabase.getQuestions(for: testTopic)
            }
        }
    }
}

#Preview {
    QuizPageView()
}


//struct Quiz: Decodable, Hashable {
//    var title: String
//    var questions: [Question]
//}
//struct Question: Decodable, Hashable {
//    var question: String
//    var options: [String]
//    var answer: String
//}
//extension Quiz {
//    static var empty: Self = .init(title: "", questions: [])
//}
//    .onAppear {
//        do {
//            let jsonData = questionMock.data(using: .uft8)!
//            let decodedQuiz = try JSONDecoder().decode(Quiz.self, from: jsonData)
//            quiz = decodedQuiz
//        } catch {
//            print(error)
//        }
//    }
