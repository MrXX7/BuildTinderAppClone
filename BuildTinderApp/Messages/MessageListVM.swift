//
//  MessageListVM.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import Foundation

class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    

    init() {
    loadPreviews()
}
    func loadPreviews() {
    self.messagePreviews = MessagePreview.examples
   }
}

