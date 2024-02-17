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
        NavigationStack {
            
            ZStack {
                
                //image
                
                VStack {
                    
                    VStack (spacing: 15){
                        
                        //form fields
                        InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                            .autocapitalization(.none)
                            .padding(.horizontal)
                            .padding(.bottom, 5)
                            .frame(height: 60)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                        
                        InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                            .padding(.horizontal)
                            .padding(.bottom, 5)
                            .frame(height: 60)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                        
                    }
                    .padding(.horizontal, 20)
                    
                    
                    //sign in button
                    
                    Button {
                        print("log user in")
                    } label: {
                        HStack {
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 60, height: 48)
                        
                    }
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    .padding(.top, 20)
                    
                    
                    //sign up button
                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack{
                            Text("Don't have an account?")
                            Text("Sign up")
                                .fontWeight(.bold)
                        }
                        
                    }.font(.system(size: 14))
                        .padding(.top, 10)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
