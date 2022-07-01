//
//  MatchesView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 1.07.2022.
//

import SwiftUI

struct MatchesView: View {
    
    @EnvironmentObject var userMng: UserManager
    
    @State private var selectedTab: LikedTab = .likes
        
    enum LikedTab {
        case likes
        case topPicks
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: { selectedTab = .likes }, label: {
                    Text("\(userMng.matches.count) Likes")
                        .font(.system(size: 22, weight: .semibold))
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: { selectedTab = .topPicks }, label: {
                    Text("\(userMng.topPicks.count) Top Picks")
                        .font(.system(size: 22, weight: .semibold))
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
            .environmentObject (UserManager())
    }
}
