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
}

extension Person {
    static let example = Person(name: "Alex", imageURLS: [URL(string: "https://picsum.photos/400/300")!])
    static let example2 = Person(name: "Samantha", imageURLS: [URL(string: "https://picsum.photos/400/301")!])
}
