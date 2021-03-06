//
//  LikesView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import SwiftUI

struct LikesView: View {
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    private var user: User {
        return userMng.currentUser
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            
            if !user.goldSubscriber {
            Text("Upgrade to Gold see people already liked you")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .foregroundColor(.textTitle)
                .font(.system(size: 16, weight: .bold))
                .padding(.horizontal, 40)
                .padding(.vertical, 24)
            }
            LazyVGrid(
                columns: [GridItem(.flexible()), GridItem(.flexible())],
                alignment: .center,
                spacing: nil,
                pinnedViews: [],
                content: {
                    ForEach(userMng.matches) { person in
                        PersonSquare(person: person, blur: !user.goldSubscriber)
                            .frame(height: 240)
                            .onTapGesture(perform: {
                                personTapped(person)
                            })
                    }
        })
            .padding(.horizontal, 6)
        })
    }
                func personTapped(_ person: Person) {
                    if user.goldSubscriber {
                        appState.showPersonsProfile(person)
                    } else {
                        appState.showPurchaseScreen()
                    }
                }
}

struct LikesView_Previews: PreviewProvider {
    static var previews: some View {
        LikesView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}
