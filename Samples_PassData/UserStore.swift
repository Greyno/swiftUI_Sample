//
//  User.swift
//  Sample_PassData
//
//  Created by G Reynolds on 12/7/21.
//

import SwiftUI

class UserStore: ObservableObject {
    
    var user = User(firstName: "", lastName: "")

    @Published var users = [User]() {
        didSet {
            guard let data = try? JSONEncoder().encode(users.self) else { return }
            UserDefaults.standard.set(data, forKey: "Users")
        }
    }
    
    init() {
        
        if let users = UserDefaults.standard.data(forKey: "Users") {
            if let decoded = try? JSONDecoder().decode([User].self, from: users) {
                self.users = decoded
                return
            }
        }
        self.users = []
        }

    
    func createUser(firstName: String, lastName: String) -> User {
        return User(firstName: firstName, lastName: lastName)
    }
    
    func addUser(firstName: String, lastName: String) {
        self.user = User(firstName: firstName, lastName: lastName)
        users.append(user)
    }
    
    func deleteUser(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
   
}
