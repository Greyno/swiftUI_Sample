//
//  UserInputView.swift
//  Sample_PassData
//
//  Created by G Reynolds on 12/23/21.
//

import SwiftUI

struct UserInputView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var userStore: UserStore
    @State var firstname = ""
    @State var lastname = ""
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("User")) {
                    TextField("First name", text: $firstname)
                    TextField("Last name", text: $lastname)
                }
            }
            .navigationBarTitle("User Details", displayMode: .inline)
            .navigationBarItems(trailing: Button("Done") {
                userStore.addUser(firstName: firstname, lastName: lastname)
                presentationMode.wrappedValue.dismiss()
                })
        }
        
    }
}

struct UserInputView_Previews: PreviewProvider {
    static var previews: some View {
        UserInputView().environmentObject(UserStore())
    }
}
