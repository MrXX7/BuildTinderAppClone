//
//  ProfileView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 25.06.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Circle()
                    .frame(height: 300)
            Button(action: {}, label: {
                Image(systemName: "pencil")
                    .font(.system(size: 18, weight: .heavy))
                    .foregroundColor(Color.gray.opacity(0.5))
                    .frame(width: 32, height: 32)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 6)
            })
        }
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .background(Color.gray)
    }
}
