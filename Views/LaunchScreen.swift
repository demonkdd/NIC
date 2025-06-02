//
//  LaunchScreen.swift
//  NIC
//
<<<<<<< HEAD
//  Created by Valor Miller on 5/28/25.
=======
//  Created by Valor Miller on 5/29/25.
>>>>>>> main
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
                Text("Start")
            }
        }
    }
}

#Preview {
    LaunchScreen()
}
