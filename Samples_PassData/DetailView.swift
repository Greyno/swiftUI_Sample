//
//  DetailView.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/5/21.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var user: User //This view shares the same user - does not create another one
    
    @State var nameLocation: Int = 0 //Being defined as @State also seems to work
    
    var body: some View {
        Form {
            Section {
                TextField("First name", text: $user.firsts[nameLocation])
                TextField("Last name", text: $user.lasts[nameLocation])
            }
        }.navigationTitle("User info")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(user: User())
        }
      
    }
}
