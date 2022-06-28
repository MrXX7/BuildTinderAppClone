//
//  ChatView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 27.06.2022.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var chatMng: ChatManager
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        self.chatMng = ChatManager(person: person)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack {
                ForEach(chatMng.messages.indices, id: \.self) { index in
                    let msg = chatMng.messages[index]
                    MessageView(message: msg)
                }
            }
        })
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}
