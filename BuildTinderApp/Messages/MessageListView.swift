//
//  MessageListView.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 29.06.2022.
//

import SwiftUI

struct MessageListView: View {
    
    @ObservedObject var vm: MessageListVM = MessageListVM()
    
    @State private var searchText: String = ""
    @State private var isEditing: Bool = true
    
    var body: some View {
        ScrollView {
        VStack {
            HStack {
                TextField("Search Matches", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color.textfieldBG)
                    .cornerRadius(8)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.textPrimary)
                                .font(.system(size: 20, weight: .bold))
                                .padding(.leading, 4)
                            
                            Spacer()
                        }
                    )
                .padding(.horizontal, 10)
                .onTapGesture(perform: {
                    self.isEditing = true
                })
                .animation(.easeIn(duration: 0.25))
                
                if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.searchText = ""
                    self.endEditing(true)
                }, label: {
                    Text("Cancel")
                })
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.easeIn(duration: 0.25))
                }
            }
            
            VStack {
                ForEach(vm.messagePreviews, id: \.self) { preview in
                    NavigationLink(
                        destination: ChatView(person: preview.person),
                        label: {
                            MessageRowView(preview: preview)
                        })
                    .buttonStyle(PlainButtonStyle())
                }
            }
            Spacer()
            }
        }
        .modifier(HideNavigationView())
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}
