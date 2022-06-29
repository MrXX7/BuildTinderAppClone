//
//  ContentView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var mng: AppStateManager = AppStateManager()
    @ObservedObject var userMng: UserManager = UserManager()
    
    var body: some View {
        MainView()
            .environmentObject(mng)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
