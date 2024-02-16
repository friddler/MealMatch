//
//  AuthViewModel.swift
//  MealMatch
//
//  Created by Frida Nilsson on 2024-02-16.
//

import Foundation
import Firebase
import SwiftUI

class AuthViewModel : ObservableObject {
    
    var auth = Auth.auth()
    private var email = ""
    private var password = ""
    @Published var isAuthenicated = false
    
    
    
    
    // function for handling authentication
    
}
