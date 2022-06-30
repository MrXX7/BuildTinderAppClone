//
//  Person.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 26.06.2022.
//

import Foundation

struct Person: Hashable {
    var name: String
    var imageURLS: [URL]
    var bio: String
    
    var age: Int
}

extension Person {
    static let example = Person(
        name: "Alex",
        imageURLS: [URL(string: "https://picsum.photos/400/300")!],
        bio: "This is my bio",
        age: 21
    )
    static let example2 = Person(
        name: "Samantha",
        imageURLS: [URL(string: "https://picsum.photos/400/301")!],
        bio: "I really love dogs",
        age: 25
        )
}
