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
            //so since every quiz is using this page what is happing is that its remembering you got a badge but not the test you earned it so even if you're on a diffrent quiz it is displaying that you got a badge. What needs to be fixed is that it needs to understand what quiz its showing the results of if you got the badge, the correct badge, understand that you pass/failed this test and not mix results and also the percentages need to be altered slight cause even though it says you need 80% to pass you can pass with 50%
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
