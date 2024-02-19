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
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        ZStack {
            
            //image
            
            
            VStack {
                
                VStack (spacing: 15){
                    
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
                    
                    //form fields
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .autocapitalization(.none)
                    
                    InputView(text: $name, title: "First name", placeholder: "Enter your name")
                    
                    
                    InputView(text: $lastname, title: "Last name", placeholder: "Enter your last name")
                    
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                    
                    InputView(text: $password, title: "Confirm password", placeholder: "Confirm your password", isSecureField: true)
                    
                    
                }
                .padding(.horizontal, 30)
                
                
                //sign in button
                Button {
                    print("sign up user")
                } label: {
                    HStack {
                        Text("SIGN UP")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right")
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 60, height: 48)
                    
                    
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 20)
                
                Button {
                    dismiss()
                } label: {
                    HStack (spacing: 3){
                        Text("Already have an account?")
                        Text("Sign in")
                            .fontWeight(.bold)
                            .underline()
                        
                    }.font(.system(size: 14))
                        .padding(.top, 10)
                }
                
            }
        }
    }
}

#Preview {
    RegistrationView()
}
