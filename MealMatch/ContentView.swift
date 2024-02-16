//
//  ContentView.swift
//  MealMatch
//
//  Created by Frida Nilsson on 2024-02-16.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        ZStack {
            
            Image("mealmatch")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                Spacer()
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
                
                Spacer()
                
                
                
                
            }
            
            
           
        }
    }
}

#Preview {
    ContentView()
}
