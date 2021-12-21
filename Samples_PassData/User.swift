//
//  User.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/7/21.
//

import SwiftUI

class User: ObservableObject {

    //@Published var firsts = ["Jane", "Bob", "Henry", "Susan"]
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
   
}
