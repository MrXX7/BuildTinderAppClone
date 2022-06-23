//
//  TabBarButtonView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 23.06.2022.
//

import SwiftUI

enum TabBarButtonType: String {
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}

struct TabBarButtonView: View {
    var type: TabBarButtonType
    var action: () -> Void
    
    var body: some View {
        Button(action: { action() }, label: {
            Image(systemName: "flame.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray.opacity(0.5))
        })
    }
}


struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .profile) {
            Text("Test")
        }
    }
}
