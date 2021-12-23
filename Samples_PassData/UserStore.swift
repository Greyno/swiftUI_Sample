//
//  User.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/7/21.
//

import SwiftUI

class UserStore: ObservableObject {
    
    var user = User(firstName: "", lastName: "")
    
    @Published var lasts = ["Doe", "Smith", "Brown", "Headley"]
    
    @Published var firsts = [String]() {
        didSet {
            guard let data = try? JSONEncoder().encode(firsts.self) else { return }
            UserDefaults.standard.set(data, forKey: "UserStore")
        }
    }
    
    init() {
        if let firsts = UserDefaults.standard.data(forKey: "UserStore") {
            if let decoded = try? JSONDecoder().decode([String].self, from: firsts) {
                self.firsts = decoded
                return
            }
        }
        self.firsts = []
        }

    
    func createUser(firstName: String, lastName: String) -> User {
        return User(firstName: firstName, lastName: lastName)
    }
    
    func addUser(firstName: String, lastName: String) {
        self.user = User(firstName: firstName, lastName: lastName)
        firsts.append(user.firstName)
    }
   
}
