//
//  LoginPage.swift
//  NIC
//
//  Created by Cameron Slaughter on 4/29/25.
//

import SwiftUI
import Foundation
import PhotosUI
import SwiftData



struct LoginPage: View {
    
    @State private var userName: String = ""
    @State private var passWord: String = ""
    
    var body: some View {
        VStack {
            HStack {
                
                Form {
                    TextField("User Name", text: $userName)
                        .vibrantCard()
                    SecureField("Password", text: $passWord)
                        .vibrantCard()
                        .onSubmit {
                            
                        }
                }
            }
        }
    }
}

#Preview {
    LoginPage()
}
