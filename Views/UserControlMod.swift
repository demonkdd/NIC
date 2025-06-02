//
//  UserControlMod.swift
//  NIC
//
<<<<<<< HEAD
//  Created by Valor Miller on 5/27/25.
=======
//  Created by Valor Miller on 5/29/25.
>>>>>>> main
//
import SwiftUI
struct UserControlMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Users should feel they are in charge—never forced or trapped."),
        InfoCard(title: "Disgestible Bite", description: "Include ways to undo actions, cancel changes, or opt out of flows."),
        InfoCard(title: "Pro Tip:", description: "Avoid auto-advancing steps, timeouts, or irreversible actions without confirmation."),
<<<<<<< HEAD
        InfoCard(title: "Try This:", description: "Ask: ‘If I make a mistake here, can I fix it easily without losing progress?’),
        InfoCard(title: "📏 Numerical Guidelines:", description: "Provide undo actions within 1–2 taps.",
                "Use action sheets or alerts for destructive actions (modal button heights = 44pt)."),
=======
        InfoCard(title: "Try This:",  description: "Ask: ‘If I make a mistake here, can I fix it easily without losing progress?’"),
//        InfoCard(title: "📏 Numerical Guidelines:", description: "Provide undo actions within 1–2 taps.",
//                "Use action sheets or alerts for destructive actions (modal button heights = 44pt)."),
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
    UserControlMod()
}

