//
//  DepthMod.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI
struct DepthMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Use layering and motion to communicate spatial relationships and flow."),
        InfoCard(title: "Disgestible Bite", description: "When a modal slides in, it tells the user they’re in a temporary view—not a full transition."),
        InfoCard(title: "Pro Tip:", description: "Motion should reinforce hierarchy—not exist just for flair."),
        InfoCard(title: "Try This:", description: "Walk through your screen transitions. Are they helping or just showing off?"),
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Default animation timing: 0.3–0.5 seconds with ease-in-out.",
//                "Layering: use shadows at 10–20% opacity, elevation 2–6pt for depth."),
        
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
                .navigationTitle(Text("Depth"))
            }
                }
        RoundedRectangle (cornerRadius: 20)
        .fill(Color.blue)
            .frame(width: 350, height: 50)
            .overlay {
                NavigationLink("Knowledge Check", destination: DepthQuizView())
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                
                
            }
            
        }
        
    }





#Preview {
    DepthMod()
}
