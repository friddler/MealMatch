//
//  RegistrationView.swift
//  MealMatch
//
//  Created by Frida Nilsson on 2024-02-16.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var email: String = ""
    @State var name: String = ""
    @State var lastname: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    
    var body: some View {
        ZStack {
            
            
            //image
            
            
            VStack {
                
                
                VStack (spacing: 15){
                    
                    //form fields
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .autocapitalization(.none)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                    
                    InputView(text: $name, title: "First name", placeholder: "name")
                        .autocapitalization(.none)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                    InputView(text: $lastname, title: "Last name", placeholder: "last name")
                        .autocapitalization(.none)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                    
                    InputView(text: $password, title: "Confirm password", placeholder: "Confirm your password", isSecureField: true)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                    
                }
                .padding(.horizontal, 30)
                
                
                //sign in button
                Button {
                    print("sign up user")
                } label: {
                    HStack {
                        Text("SIGN UP")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 60, height: 48)
                    
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 20)
                
            }
        }
    }
}

#Preview {
    RegistrationView()
}
