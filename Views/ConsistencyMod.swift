//
//  ConsistencyMod.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI
struct ConsistencyMod: View {
    var moduleInfo: [InfoCard] = [
        InfoCard(title: "Definition", description: "Use familiar patterns, components, and system behaviors throughout your app."),
        InfoCard(title: "Digestible Bite", description: "Apps that reuse standard icons and gestures (like tab bars or swipe-to-go-back) feel intuitive without extra learning."),
        InfoCard(title: "Pro Tip:", description: "Favor built-in elements over reinventing UI—consistency builds trust and speed."),
        InfoCard(title: "Try This:", description: "Look through your design: how many custom components duplicate standard behaviors?"),
        
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
    ConsistencyMod()
}

