//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "")
    @Published var matches: [Person] = []
    @Published var TopPicksView: [Person] = []
    
    init() {
        loadUser()
        loadMatches()
        loadTopPicks()
    }

    private func loadTopPicks() {
        self.topPicks = Person.examples.shuffled()
    }
    
   private func loadUser() {
       self.currentUser = User.example
    }
    
    private func loadMatches() {
        self.matches = Person.examples
    }
}
