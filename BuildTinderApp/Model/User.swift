//
//  User.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import Foundation

struct User {
    
    var name: String
    var age: Int
    var jobTitle: String
    
    var goldSubscriber: Bool = false
    var profileTip: String =
    
    var imageURLS: [URL] = []
}

extension User {
    static let example = User(
        name: "Alex",
        age: 21,
        jobTitle: "Software Engineer",
        goldSubscriber: false,
        profileTip: "Photo Tip: Make waves with a beach photo and get more likes",
        imageURLS: [URL(string: "https://picsum.photos/400/300")!])
}
