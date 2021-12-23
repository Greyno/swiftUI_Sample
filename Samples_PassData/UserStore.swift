//
//  User.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/7/21.
//

import SwiftUI

class UserStore: ObservableObject {
    
    var user = User(firstName: "", lastName: "")
    
    //@Published var lasts = ["Doe", "Smith", "Brown", "Headley"]
    
//    @Published var lasts = [String]() {
//        didSet {
//            guard let data = try? JSONEncoder().encode(lasts.self) else { return }
//            UserDefaults.standard.set(data, forKey: "Lasts")
//        }
//    }
//    
//    @Published var firsts = [String]() {
//        didSet {
//            guard let data = try? JSONEncoder().encode(firsts.self) else { return }
//            UserDefaults.standard.set(data, forKey: "Firsts")
//        }
//    }
    
    @Published var users = [User]() {
        didSet {
            guard let data = try? JSONEncoder().encode(users.self) else { return }
            UserDefaults.standard.set(data, forKey: "Users")
        }
    }
    
    init() {
//        if let firsts = UserDefaults.standard.data(forKey: "Firsts") {
//            if let decoded = try? JSONDecoder().decode([String].self, from: firsts) {
//                self.firsts = decoded
//                return
//            }
//        }
//
//        if let lasts = UserDefaults.standard.data(forKey: "Lasts") {
//            if let decoded = try? JSONDecoder().decode([String].self, from: lasts) {
//                self.lasts = decoded
//                return
//            }
//        }
        
        if let users = UserDefaults.standard.data(forKey: "Users") {
            if let decoded = try? JSONDecoder().decode([User].self, from: users) {
                self.users = decoded
                return
            }
        }
//        self.firsts = []
//        self.lasts = []
        self.users = []
        }

    
    func createUser(firstName: String, lastName: String) -> User {
        return User(firstName: firstName, lastName: lastName)
    }
    
    func addUser(firstName: String, lastName: String) {
        self.user = User(firstName: firstName, lastName: lastName)
        //firsts.append(user.firstName)
        //lasts.append(user.lastName)
        users.append(user)
    }
    
    func deleteUser(at offsets: IndexSet) {
//        firsts.remove(atOffsets: offsets)
//        lasts.remove(atOffsets: offsets)
        users.remove(atOffsets: offsets)
    }
   
}
