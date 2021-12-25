//
//  DetailView.swift
//  Sample_PassData
//
//  Created by G Reynolds on 12/5/21.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var user: UserStore  
    
    var nameLocation: Int = 0
    
    var body: some View {
        Form {
            Section {
                TextField("First name", text: $user.users[nameLocation].firstName)
                TextField("Last name", text: $user.users[nameLocation].lastName)
            }
        }.navigationTitle("User info")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView().environmentObject(UserStore())
        }
      
    }
}
