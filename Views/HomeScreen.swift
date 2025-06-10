//
//  HomeScreen.swift
//  NIC
//
//  Created by Valor Miller on 5/29/25.
//
import SwiftUI

struct HomeScreen: View {
    @StateObject var oo = SearchObserableObject()
    @State private var searchTerm = ""
    var searchResults: [Topic] {
        if searchTerm.isEmpty {
            return oo.data
        } else {
            return oo.data.filter { $0.name.lowercased().contains(searchTerm.lowercased())
            }
        }
    }

//    private var members: [String] = [AccessibilityMod, ColorMod, ConsistencyMod, DeferenceMod, DepthMod, LayoutMod, ModulePage, SFSymbolMod, TypographyMod, UserControlMod]
    private var colors: [Color] = [.gray]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    NavigationLink {
                        AccessibilityMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .bottom,
                                    //                                            angle: .degrees(180)
                                    //                                        )
                                    LinearGradient(colors: [.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            //                                RoundedRectangle(cornerRadius: 20)
                            //                                    .foregroundColor(.purple)
                            //                                    .frame(width: 150, height: 150)
                            //                                    .blur(radius: 200)
                            Text("Accessibility")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                            //                                    .offset(x: -20, y: 40)
                        }
                    }
                    NavigationLink {
                        ColorMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("Color")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        ConsistencyMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("Consistency")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        DeferenceMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("Deference")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        DepthMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("Depth")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        LayoutMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("Layout")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        SFSymbolMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("SF Symbol")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        TypographyMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("Typography")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                        }
                    }
                    NavigationLink {
                        UserControlMod()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    //                                        AngularGradient(
                                    //                                            gradient: Gradient(colors: [.purple, .blue]),
                                    //                                            center: .center,
                                    //                                            angle: .degrees(225) // you can adjust this angle for effect
                                    //                                        )
                                    LinearGradient(colors:[.blue, .purple], startPoint: .bottomTrailing, endPoint: .topLeading)
                                )
                                .frame(width: 170, height: 170)
                            
                            Text("User Control")
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
                    
                    //                    }
                    
                }
                
            }
            
            .padding()
            .ignoresSafeArea(edges: .bottom)
                //       .navigationTitle(Text("Home"))
            .navigationBarItems(leading:
                                    Text("Home")
                .font(.largeTitle.bold())
            )
            .navigationBarItems(trailing:
                                    Button(action: {
                //Navigation link
            }, label: {
                Image(systemName: "bookmark")
                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
            })
                                )
//.navigationBarTitleDisplayMode(.automatic)
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button(action: {
//                        //Navigation link
//                    }, label: {
//                        Image(systemName: "bookmark")
//                            .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
//                    })
//                }
//            }
            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always))
            .overlay {
                if !searchTerm.isEmpty {
                    List {
                        ForEach(searchResults, id: \.self) { result in
                            NavigationLink(result.name) {
                                TopicDetailView(topic: result)
                            }
                        }
                    }
                }
            }
        }
//        HStack {
//            Button(action: {
//                //Navigation link
//            }, label: {
//                Image(systemName: "bookmark")
//                    .symbolEffect(.scale.up.byLayer, options: .nonRepeating)
//            })
//            .
//        }
    }
}



#Preview {
    HomeScreen()
}
