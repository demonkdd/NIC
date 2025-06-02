//
//  ModulePage.swift
//  NIC
//
<<<<<<< HEAD
//  Created by Valor Miller on 5/15/25.
//

=======
//  Created by Valor Miller on 5/29/25.
//
>>>>>>> main
import SwiftUI
struct ModulePage: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Core Concept", description: "Great interfaces aren’t just about how things look—they’re about how things work. When designing for interaction, always consider clarity, consistency, and context. Ask yourself: “What does the user expect?” and “What should happen next?”"),
        InfoCard(title: "Best Practices", description: "Great interfaces aren’t just about how things look—they’re about how things work. When designing for interaction, always consider clarity, consistency, and context. Ask yourself: “What does the user expect?” and “What should happen next?”")
        
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
    ModulePage()
}

<<<<<<< HEAD
=======

>>>>>>> main
