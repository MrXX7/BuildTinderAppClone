//
//  MainView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 23.06.2022.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var appState: AppStateManager
    
    func correctViewForState() -> some View {
        switch appState.selectedTab {
        case .fire:
          return Text("Fire")
        case .star:
          return Text("Star")
        case .profile:
           return Text("Profile")
        case .message:
           return Text("Message")
        }
    }
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack {
                HStack {
                    Spacer()
                    TabBarButtonView(type: .fire)
                    Spacer()
                    TabBarButtonView(type: .star)
                    Spacer()
                    TabBarButtonView(type: .message)
                    Spacer()
                    TabBarButtonView(type: .profile)
                    Spacer()
                }
                .frame(height: 100)
                correctViewForState()
                
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(AppStateManager())
    }
}
