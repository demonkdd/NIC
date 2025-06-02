//
//  SFSymbolMod.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI
struct SFSymbolMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Apple’s icon system, designed to scale and align with text automatically."),
        InfoCard(title: "Digestible Bite", description: "Using SF Symbols ensures your icons match Apple’s visual language and support accessibility features."),
        InfoCard(title: "Pro Tip:", description: "Use system-provided icons where possible—especially for common actions like delete, share, and edit."),
        InfoCard(title: "Try This:", description: "Replace any PNG icons in your design with an equivalent SF Symbol and check for visual consistency."),
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Use SF Symbols with UIFont.TextStyle to auto-size with text.",
//                 "Match icon sizes to text sizes (e.g., 17pt Body text → 17pt symbol)."),
        
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
                .navigationTitle(Text("SF Symbols"))
            }
                }
        RoundedRectangle (cornerRadius: 20)
        .fill(Color.blue)
            .frame(width: 350, height: 50)
            .overlay {
                NavigationLink("Knowledge Check", destination: QuizPageView())
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                
                
            }
            
        }
        
    }





#Preview {
    SFSymbolMod()
}

