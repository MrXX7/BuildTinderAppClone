//
//  ChatViewHeader.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 28.06.2022.
//

import SwiftUI

struct ChatViewHeader: View {
    let name: String
    let imageURL: URL?
    let videoAction: () -> Void
    
    var body: some View {
        Text("Hello World")
    }
}
    
    
    
    
struct ChatViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        let person = Person.example
        ChatViewHeader(
            name: person.name,
            imageURL: person.imageURLS.first,
            videoAction: {
                
            }
        )
        
    }
}
