//
//  MessageThread.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 26.06.2022.
//

import Foundation

struct MessagePreview {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hello there. How are you doing today? How's the weather where you live right now.")

static let examples: [MessagePreview] = [
    MessagePreview(person: Person.example, lastMessage: "Hello there. How are you doing today? How's the weather where you live right now."),
    MessagePreview(person: Person.example, lastMessage: "Hi there")
]

}
