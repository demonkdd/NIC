//
//  AestheticIntegrityMod.swift
//  NIC
//
//  Created by Valor Miller on 6/2/25.
//
import SwiftUI
struct AestheticIntegrityMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Visual and behavioral design should match the purpose of your app."),
        InfoCard(title: "Digestible Bite", description: "A fitness tracker should feel energetic and data-driven, while a meditation app should feel calm and minimal."),
        InfoCard(title: "Pro Tip:", description: "Don’t over-style—design should always support the function, not distract from it."),
        InfoCard(title: "Try This:", description: "Ask: ‘Does the design emotionally match the task the user is trying to complete?’"),
        InfoCard(title: "📏 Numerical Guidelines:", description: "Use restrained motion (e.g., 0.2–0.5 sec for most transitions)."),
                 //"Visual hierarchy should prioritize primary content at the top 60% of the screen.")
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
                .navigationTitle(Text("Aesthetic Integrity"))
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
    AestheticIntegrityMod()
}
