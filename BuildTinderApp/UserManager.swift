//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "")
    
    init() {
        loadUser()
    }
    
   private func loadUser() {
       self.currentUser = User.example
    }
}
