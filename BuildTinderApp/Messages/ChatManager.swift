//
//  ChatManager.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 27.06.2022.
//

import Foundation

class ChatManager: ObservableObject {
    @Published var messages: [Message] = []
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        loadMessages()
    }
    
    private func sendMessage(_ message: Message) {
//        Networking
        messages.append(message)
//        if networking failure, then show an error with some retry options
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
    }
}
