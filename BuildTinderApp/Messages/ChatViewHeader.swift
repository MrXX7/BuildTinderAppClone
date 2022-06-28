//
//  ChatViewHeader.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 28.06.2022.
//

import SwiftUI

struct ChatViewHeader: View {
    @Environment(\.presentationMode) var presentationMode
    let name: String
    let imageURL: URL?
    let videoAction: () -> Void
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.top)
                .shadow(radius: 3)
            HStack {
                Button(action: { presentationMode.wrappedValue.dismiss() }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.textPrimary)
                        .font(.system(size: 28, weight: .semibold))
                })
                Spacer()
                VStack (spacing: 0){
                    RoundedImage(url: imageURL)
                        .frame(height: 80)
                    Text(name)
                        .foregroundColor(Color.textSecondary)
                    
                        .font(.system(size: 13))
                }
                
                Button(action: { videoAction() }, label: {
                    Image(systemName: "video.fill")
                        .font(.system(size: 20, weight: .bold))
                })
            }
        }
        .frame(height: 50)
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