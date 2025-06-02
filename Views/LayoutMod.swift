//
//  LayoutMod.swift
//  NIC
//
<<<<<<< HEAD
//  Created by Valor Miller on 5/27/25.
=======
//  Created by Valor Miller on 5/29/25.
>>>>>>> main
//
import SwiftUI
struct LayoutMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Use consistent spacing, alignment, and responsive grids to create clear structure."),
        InfoCard(title: "Disgestible Bite", description: "Good layout ensures content doesn’t feel cramped or float randomly—it creates rhythm and clarity."),
        InfoCard(title: "Pro Tip:", description: "Use Apple’s safe areas and spacing recommendations to maintain visual harmony on all devices."),
        InfoCard(title: "Pro Tip:", description: "Use Apple’s safe areas and spacing recommendations to maintain visual harmony on all devices."),
        InfoCard(title: "Try This:", description: "Test your layout at the smallest and largest Dynamic Type settings. Does everything still look balanced?"),
<<<<<<< HEAD
        InfoCard(title: "📏 Numerical Guidelines:", description: "Horizontal padding: 16pt (edge), 20pt (content areas).",
                "Vertical spacing: 8pt between items, 24pt between sections.",
                 "Respect Safe Areas (automatically applied in SwiftUI/UIKit)."),
=======
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Horizontal padding: 16pt (edge), 20pt (content areas).",
//                "Vertical spacing: 8pt between items, 24pt between sections.",
//                 "Respect Safe Areas (automatically applied in SwiftUI/UIKit)."),
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
    LayoutMod()
}
<<<<<<< HEAD
=======

>>>>>>> main
