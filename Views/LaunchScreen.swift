//
//  LaunchScreen.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI

struct LaunchScreen: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Seed")
                .font(.largeTitle)
                .padding()
                .background(Color.blue)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                RoundedRectangle (cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 350, height: 50)
                    .overlay {
                        NavigationLink("Start", destination: HomeScreen())
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                    }
            }
        }
    }
}

    #Preview {
        LaunchScreen()
    }

