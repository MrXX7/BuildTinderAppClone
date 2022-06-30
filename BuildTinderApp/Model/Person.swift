//
//  Person.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 26.06.2022.
//

import Foundation

struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
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
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(
            name: "Olivia",
            imageURLS: [URL(string: "https://picsum.photos/400/302")!],
            bio: "I love hiking",
            age: 30
            ),
        Person(
            name: "Sophia",
            imageURLS: [URL(string: "https://picsum.photos/400/303")!],
            bio: "I m really broing",
            age: 28
            ),
        Person(
            name: "Mia",
            imageURLS: [URL(string: "https://picsum.photos/400/304")!],
            bio: "I like to skateboard",
            age: 22)
    ]
}
