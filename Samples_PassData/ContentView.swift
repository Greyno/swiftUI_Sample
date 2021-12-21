//
//  ContentView.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/5/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = User() //This view owns the creation of the User (source of truth), so it initializes a User here
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<user.firsts.count) { name in //name is an Int
                    NavigationLink(destination: DetailView(user: user, nameLocation: name))
                        { Text(user.firsts[name]) } //this will ensure names are in sync in both views
                }
            }.navigationTitle("Simple view")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
