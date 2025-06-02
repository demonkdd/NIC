//
//  TypographyMod.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI
struct TypographyMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Use Apple’s San Francisco system and Dynamic Type to support legibility."),
        InfoCard(title: "Disgestible Bite", description: "System font styles scale with user settings and maintain rhythm across screen sizes."),
        InfoCard(title: "Pro Tip:", description: "Use built-in text styles like Title1 or Body—avoid hardcoding font sizes."),
        InfoCard(title: "Try This:", description: "Switch your device to Large Text—does your layout still work without horizontal scrolling?"),
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Use TextStyles: Title1 (28pt), Body (17pt), Caption1 (12pt).",
//                 "Minimum line height: 120% of font size (e.g., 17pt → 20.4pt).",
//                "Use UIFontMetrics for scalable text."),
        
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
                .navigationTitle(Text("Typography"))
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
    TypographyMod()
}
