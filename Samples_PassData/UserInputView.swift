//
//  UserInputView.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/23/21.
//

import SwiftUI

struct UserInputView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var userStore: UserStore
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
                //Prevent an empty item going back to the previous screen
                userStore.createUser(firstName: firstname, lastName: lastname)
                userStore.addUser(firstName: firstname, lastName: lastname)
                presentationMode.wrappedValue.dismiss()
                })
        }
        
    }
}

struct UserInputView_Previews: PreviewProvider {
    static var previews: some View {
        UserInputView(userStore: UserStore())
    }
}
