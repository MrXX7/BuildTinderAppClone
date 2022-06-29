//
//  User.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import Foundation

struct User {
    var name: String
    
    var goldSubscriber: Bool = false
}

extension User {
    static let example = User(name: "Alex", goldSubscriber: false)
}
