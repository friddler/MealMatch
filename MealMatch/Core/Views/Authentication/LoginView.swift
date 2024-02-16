//
//  LoginView.swift
//  MealMatch
//
//  Created by Frida Nilsson on 2024-02-16.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                
                Spacer()
                
                TextField("Username", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 10)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                
                               
            }
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    LoginView()
}
