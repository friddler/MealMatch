//
//  ProfileView.swift
//  MealMatch
//
//  Created by Frida Nilsson on 2024-02-17.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showingImagePicker = false
    @State private var profileImage: UIImage? = nil
    
    var body: some View {
        List {
            Section {
                HStack {
                    Button(action: {
                        self.showingImagePicker = true
                    }) {
                        if let profileImage = profileImage {
                            Image(uiImage: profileImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 72, height: 72)
                                .clipShape(Circle())
                        } else {
                            Text("FN")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 72, height: 72)
                                .background(Color(.systemGray3))
                                .clipShape(Circle())
                        }
                    }
                    .sheet(isPresented: $showingImagePicker) {
                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$profileImage)
                    }
                    
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
                HStack {
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            Section("Account") {
                SettingsRowView(imageName: "rectangle.portrait.and.arrow.right", title: "Sign out", tintColor: Color(.systemGray))
                SettingsRowView(imageName: "minus.circle", title: "Delete account", tintColor: Color(.systemGray))
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
