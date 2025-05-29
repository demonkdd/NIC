//
//  DeferenceMod.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI
struct DeferenceMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Let content shine—interface elements should recede and support."),
        InfoCard(title: "Disgestible Bite", description: "A photo app should showcase the photo, not distract with toolbars or shadows."),
        InfoCard(title: "Pro Tip:", description: "Use blur, transparency, and minimal UI elements to keep focus on the user’s content."),
        InfoCard(title: "Try This:", description: "Remove one decorative element from your screen—does it feel cleaner without losing meaning?"),
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Keep UI overlays below 20–25% of screen height unless in focus.",
//                "Use system blur styles: systemMaterial, ultraThinMaterial."),
        
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
    DeferenceMod()
}

