//
//  ContentView.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/5/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = UserStore() //This view owns the creation of the User (source of truth), so it initializes a User here
    @State private var showUser = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<user.firsts.count, id:\.self) { name in //name is an Int
                    NavigationLink(destination: DetailView(user: user, nameLocation: name))
                        { Text(user.firsts[name]) } //this will ensure names are in sync in both views
                }
            }.navigationTitle("Simple view")
            .navigationBarItems(trailing: Button(action: { showUser = true }) {
                            Image(systemName: "plus")
                          })
                    }.fullScreenCover(isPresented: $showUser, content: {
                        //When using ObservedObject, needed to pass userStore here to allow ContentView to update with new items
                        //When using EnvironmentObject, this passing is not needed
                        UserInputView(userStore: user)
                    })
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
