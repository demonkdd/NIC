//
//  ColorMod.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI
struct ColorMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Use Apple’s semantic color system to support readability and adaptability."),
        InfoCard(title: "Disgestible Bite", description: "System colors adapt automatically for dark mode and accessibility settings."),
        InfoCard(title: "Pro Tip:", description: "Use semantic colors (like systemBlue) instead of custom hex values whenever possible."),
        InfoCard(title: "Try This:", description: "Run your design through a color contrast checker. Does it pass WCAG AA standards?"),
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Use semantic colors: systemRed, label, background, etc.",
//                 "Avoid hardcoded RGB—use UIColor.label, UIColor.systemBackground.",
//                "Maintain 4.5:1 contrast for normal text, 3:1 for large text."),
        
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
                .navigationTitle(Text("Color"))
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
    ColorMod()
}

