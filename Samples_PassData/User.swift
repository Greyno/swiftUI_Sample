//
//  User.swift
//  Sample_PassData
//
//  Created by G Reynolds on 12/23/21.
//

import Foundation

struct User: Identifiable, Codable {
    
    var id = UUID()
    var firstName: String
    var lastName: String
}
