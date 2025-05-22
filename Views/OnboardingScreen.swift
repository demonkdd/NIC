//
//  OnboardingScreen.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI

struct OnboardingScreen: View {
    @AppStorage("onboarding") var isOnboardingScreenActive: Bool = true
    
    var body: some View {
        VStack {
            if isOnboardingScreenActive {
                OnboardingScreen()
            } else {
                LaunchScreen()
            }
            }
        }
    }



#Preview {
    OnboardingScreen()
}
