////
////  OnboardingView.swift
////  NIC
////
////  Created by Mel Dozier on 4/29/25.
////
import SwiftUI

struct OnboardingView: View {
    
    @EnvironmentObject var badgeManager: BadgeManager
    @State private var currentPage = 0
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    
    let pages = [
        OnboardingPage(title: "Welcome to SeeD", subtitle: "Master Human Interface Guidelines one principle at a time.", imageName: "sparkles"),
//        OnboardingPage(title: "Learn Design Fundamentals", subtitle: "Explore clarity, consistency, depth, and more.", imageName: "rectangle.stack.fill"),
//        OnboardingPage(title: "Earn Badges", subtitle: "Track your progress and collect badges for each principle.", imageName: "checkmark.seal.fill")
    ]
    
    
    var body: some View {
//        VStack {
//            TabView(selection: $currentPage) {
//                ForEach(0..<pages.count, id: \.self) { index in
//                    VStack(spacing: 20) {
//                        Image(systemName: pages[index].imageName)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(height: 150)
//                            .padding()
//                        
//                        Text(pages[index].title)
//                            .font(.title)
//                            .fontWeight(.bold)
//                        
//                        Text(pages[index].subtitle)
//                            .font(.body)
//                            .multilineTextAlignment(.center)
//                            .padding(.horizontal)
//                    }
//                    .tag(index)
//                }
//            }
//            .tabViewStyle(PageTabViewStyle())
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//            
//            Spacer()
//            
//            Button(action: {
//                if currentPage < pages.count - 1 {
//                    currentPage += 1
//                } else {
//                    hasSeenOnboarding = true
//                }
//            }) {
//                Text(currentPage < pages.count - 1 ? "Next" : "Get Started")
//                    .font(.headline)
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.accentColor)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//            }
//            .padding()
            
            
            
            NavigationStack {
                VStack {
                    TabView(selection: $currentPage) {
                        ForEach(0..<pages.count, id: \.self) { index in
                            VStack(spacing: 20) {
                                Image(systemName: pages[index].imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 150)
                                    .padding()
                                
                                Text(pages[index].title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Text(pages[index].subtitle)
                                    .font(.body)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                            }
                            .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    
                    Spacer()
                    
                    Button(action: {
                        if currentPage < pages.count - 1 {
                            currentPage += 1
                        } else {
                            hasSeenOnboarding = false
                        }
                    }) {
                        NavigationLink(destination: ProfilePageView()) {
                            Text(currentPage < pages.count - 1 ? "Skip" : "Enter")
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.accentColor)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                }
                
            }
            
        }
    }
    
    
    struct OnboardingPage {
        let title: String
        let subtitle: String
        let imageName: String
    }

    #Preview {
    OnboardingView()
        .environmentObject(BadgeManager())
}

