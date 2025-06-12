//
//  QuizResultView.swift
//  NIC
//
//  Created by Mel Dozier on 4/29/25.
//

import SwiftUI

struct QuizResultView: View {
    @EnvironmentObject var quizManager: QuizManager
    let scorePercentage: Double
    let passed: Bool
    let failed: Bool
    let topic: Topic
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 24) {
                Text("Score: \(Int(scorePercentage * 100))%")
                    .font(.title2)
                
                if passed  {
                    Label("Badge Earned", systemImage: "checkmark.seal.fill")
                        .foregroundColor(.green)
                    Text(passed ? "🎉 You Passed!" : "Try Again")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    scorePercentage > 80 ? Image("star") : nil
                } else {
                    if failed {
                        Label(failed ? "You Failed" :"Better luck next time", systemImage: "")
                        scorePercentage < 80 ? Image("broken-star") : nil
                        
                    }
                }
                
                let sampleTopics = allTopics.map {
                    Topic(
                        name: $0,
                        symbol: quizManager.symbolForTopic($0),
                        description: "",
                        link: ""
                    )
                }
                
                NavigationLink("Back to Topics",destination: HomeScreen())
                    //                //Text("Back to Topics")
                    //                    //.padding()
                    //                    //.frame(maxWidth: .infinity)
                    //                    .background(Color.accentColor)
                    //                    .foregroundColor(.white)
                    //                    .cornerRadius(10)
                
            }
            .padding()
            .navigationTitle("Results")
        }
    }
}
//below 80% is a fail
