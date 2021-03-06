//
//  RoundedImage.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 25.06.2022.
//

import SwiftUI
import Kingfisher

struct RoundedImage: View {
    var url: URL?
    
    var body: some View {
        KFImage(url)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(url: URL(string: "https://picsum.photos/400"))
    }
}
