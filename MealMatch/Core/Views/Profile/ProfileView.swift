//
//  ProfileView.swift
//  MealMatch
//
//  Created by Frida Nilsson on 2024-02-17.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text("FN")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    
                    
                    VStack (alignment: .leading, spacing: 2){
                        Text("Frida Nilsson")
                            .fontWeight(.semibold)
                            .font(.subheadline)
                            .padding(.top, 5)
                        Text("name@example.com")
                            .font(.footnote)
                            .accentColor(.gray)
                    }
                }
                
            }
            
            Section("General") {
                
            }
            
            Section("Account") {
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
