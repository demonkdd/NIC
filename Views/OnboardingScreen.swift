//
//  OnboardingScreen.swift
//  NIC
//
//  Created by Valor Miller on 5/28/25.
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
