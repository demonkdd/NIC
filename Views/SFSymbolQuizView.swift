//
//  SFSymbolQuizView.swift
//  NIC
//
//  Created by Cameron Slaughter on 6/12/25.
//

import SwiftUI

struct SFSymbolQuizView: View {
    @StateObject private var vm = QuizViewModel(questions: [])
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    @State private var quiz: QuizQuestion?
    @State private var testTopic = Topic(name: "SF Symbols", symbol: "", description: "", link: "")
    @State private var testQuestions: [QuizQuestion] = []
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                //                Button("Load Questions") {
                //                    testQuestions = QuizDatabase.getQuestions(for: testTopic )
                //                }
                //
                //                Button("Load into vm") {
                //                    vm.questions = testQuestions
                //                }
                //                Text("\(vm.questions.isEmpty)")
                
                //Text("is populated: \(!testQuestions.isEmpty)")
                
                Image(systemName: "lightbulb.max.fill")
                    .font(.system(size: 100, weight: .bold, design: .default))
                    .foregroundColor(.yellow)
                    .padding(.bottom, 300)
                

                    
                RoundedRectangle (cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 350, height: 50)
                    .overlay {
                Button("Knowledge Check") {
                            showingConfirmation = true
                            vm.questions = testQuestions
                        }
                            .font(.headline)
                            .foregroundColor(.white)
                            .confirmationDialog("Would you like to start the Knowledge Check?", isPresented: $showingConfirmation) {
                            NavigationLink(destination: QuizView(topic: sampleTopics[0], viewModel: vm)) {
                                Text("Begin")
                            }
                            Button("Cancel", role: .cancel) { }
                        }
                        
                    }
                    .onAppear {
                        //                vm.questions = QuizDatabase.getQuestions(for: testTopic)
                        testQuestions = QuizDatabase.getQuestions(for: testTopic )
                    }
            }
        }
    }
}

#Preview {
    SFSymbolQuizView()
}
