//
//  InputView.swift
//  MealMatch
//
//  Created by Frida Nilsson on 2024-02-16.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text : String
    let title : String
    let placeholder : String
    var isSecureField = false
    
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 15))
                
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 15))
                
            }
            
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email Address", placeholder: "frida@example.com")
}
