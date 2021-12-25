//
//  ContentView.swift
//  Sample_PassData
//
//  Created by G Reynolds on 12/5/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserStore
    @State private var showUser = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<user.users.count, id:\.self) { name in
                    NavigationLink(destination: DetailView(nameLocation: name))
                        { Text(user.users[name].firstName) }
                }.onDelete(perform: user.deleteUser)
            }.navigationTitle("Simple view")
            .navigationBarItems(trailing: Button(action: { showUser = true }) {
                            Image(systemName: "plus")
                          })
                    }.fullScreenCover(isPresented: $showUser, content: {
                        UserInputView()
                    })
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserStore())
    }
}
