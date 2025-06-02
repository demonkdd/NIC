//
//  AccessibilityMod.swift
//  NIC
//
<<<<<<< HEAD
//  Created by Valor Miller on 5/27/25.
//
import SwiftUI
=======
//  Created by Valor Miller on 5/29/25.
//



import SwiftUI



>>>>>>> main
struct AccessibilityMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Core Concept", description: "Design interfaces that work for people with visual, auditory, or physical impairments."),
        InfoCard(title: "Best Practices", description: "High contrast, scalable text, screen reader support, and Right-to-Left (RTL) layout support are part of inclusive design."),
        InfoCard(title: "Pro Tip:", description: "Don’t rely on color alone to communicate meaning—use icons, text, or shapes too."),
        InfoCard(title: "Try This:", description: "Turn on VoiceOver or switch to an RTL language like Arabic—does your interface still work?"),
<<<<<<< HEAD
        InfoCard(title: "📏 Numerical Guidelines:", description: "Minimum contrast ratio: 4.5:1 for body text, 3:1 for large text.",
                 "Tap targets: 44pt × 44pt minimum.",
                 "Dynamic Type: support sizes from XS (11pt) to XL+ (53pt+)."),
=======
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Minimum contrast ratio: 4.5:1 for body text, 3:1 for large text.",
//                 "Tap targets: 44pt × 44pt minimum.",
//                 "Dynamic Type: support sizes from XS (11pt) to XL+ (53pt+)."),
>>>>>>> main
        
    ]
    
    
    var body: some View {
        
        NavigationStack {
            VStack {
                ScrollView {
                    PlatformTab()
                    ForEach(moduleInfo, id: \.self) { info in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 350, height: 190)
                            .overlay {
                                VStack(alignment: .leading) {
                                    Text(info.title)
                                        .padding(.bottom, 10)
                                    Text(info.description)
                                        .font(.caption)
                                }
                            }
                    }
                    
                }
            }
                }
        RoundedRectangle (cornerRadius: 20)
        .fill(Color.blue)
            .frame(width: 350, height: 50)
            .overlay {
                NavigationLink("Knowledge Check", destination: ProfilePageView())
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                
                
            }
            
        }
        
    }





#Preview {
    AccessibilityMod()
}
<<<<<<< HEAD
=======

>>>>>>> main
