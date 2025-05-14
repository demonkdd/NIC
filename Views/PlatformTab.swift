//
//  PlatformTab.swift
//  NIC
//
//  Created by Valor Miller on 5/21/25.
//

import SwiftUI

struct PlatformTab: View {
    var body: some View {
        NavigationStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 350, height: 50)
                .overlay {
                    VStack {
                        //NavigationLink(destination: //placeholder()) {
                        
                        HStack {
                            
                            Button(action: {
                                //Navigation link
                            }, label: {
                                Image(systemName: "applewatch")
                                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
                            })
                            
                            
                            
                            Button(action: {
                                //Navigation link
                            }, label: {
                                Image(systemName: "vision.pro")
                                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
                            })
                            
                            
                            
                            Button(action: {
                                //Navigation link
                            }, label: {
                                Image(systemName: "macbook")
                                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
                            })
                            
                            
                            
                            Button(action: {
                                //Navigation link
                            }, label: {
                                Image(systemName: "iphone")
                                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
                            })
                            
                            
                            
                            Button(action: {
                                //Navigation link
                            }, label: {
                                Image(systemName: "desktopcomputer")
                                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
                            })
                            
                            
                            
                            Button(action: {
                                //Navigation link
                            }, label: {
                                Image(systemName: "ipad")
                                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
                            })
                            
                            
                            
                            Button(action: {
                                //Navigation link
                            }, label: {
                                Image(systemName: "tv")
                                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
                            })
                            
                            
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .navigationTitle(Text("Aesthetic Integrity"))
                        
                        
                        
                        
                        
                        //                        NavigationLink(destination: DestinationView(title: "First Destination")) {
                        //                            Text("Knowledge Check")
                        //                                .font(.headline)
                        //                                .foregroundColor(.white)
                        //                                .frame(maxWidth: .infinity)
                        //                                .padding()
                        //                                .background(Color.blue)
                        //                                .cornerRadius(12)
                    }
                }
        }
    }
}

#Preview {
    PlatformTab()
}
