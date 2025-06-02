//
//  OnboardingScreen.swift
//  NIC
//
<<<<<<< HEAD
//  Created by Valor Miller on 5/28/25.
=======
//  Created by Valor Miller on 5/29/25.
>>>>>>> main
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
