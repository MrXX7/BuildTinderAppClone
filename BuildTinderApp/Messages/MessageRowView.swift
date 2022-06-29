//
//  MessageRowView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import SwiftUI
import Kingfisher

struct MessageRowView: View {
    
    var preview: MessagePreview
    
    var body: some View {
        
        HStack {
            RoundedImage(url: preview.person.imageURLS.first)
                .frame(height: 90)
        VStack {
            Text(preview.person.name)
                .font(.system(size: 21, weight: .semibold))
            
            Text(preview.lastMessage)
                .foregroundColor(.textPrimary)
        }
            Spacer()
            
        }
    }
}

struct MessageRowView_Previews: PreviewProvider {
    static var previews: some View {
        MessageRowView(preview: MessagePreview.example)
    }
}
