//
//  HomeScreen.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI

struct HomeScreen: View {
//    private var members: [String] = [AccessibilityMod, ColorMod, ConsistencyMod, DeferenceMod, DepthMod, LayoutMod, ModulePage, SFSymbolMod, TypographyMod, UserControlMod]
    private var colors: [Color] = [.gray]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                        NavigationLink {
                            AccessibilityMod()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 170, height: 170)
                                    .foregroundColor(.blue)
                                Text("Accessibility Mod")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        ColorMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("Color Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
                    NavigationLink {
                        ConsistencyMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("Consistency Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
                    NavigationLink {
                        DeferenceMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("Deference Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
                    NavigationLink {
                        DepthMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("Depth Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
                    NavigationLink {
                        LayoutMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("Layout Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
                    NavigationLink {
                        SFSymbolMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("SFSymbol Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
                    NavigationLink {
                        TypographyMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("Typography Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
                    NavigationLink {
                        UserControlMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 170)
                                .foregroundColor(.blue)
                            Text("Accessibility Mod")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
//                    ForEach(data, \.self) { String in
//                            ZStack {
//                            RoundedRectangle(cornerRadius: 20)
//                                    .frame(width: 170, height: 170)
//                                    .foregroundColor(.gray)
//                                Text(\(String))
//                                    .foregroundColor(.black)
//                                    .font(.system(size: 70, weight: .medium, .rounded))
//                        }
//                    }
                    
                }
                
            }
            .padding()
            .navigationTitle(Text("Home"))
        }
                
            }
        }



#Preview {
    HomeScreen()
}
