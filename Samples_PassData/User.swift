//
//  User.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/23/21.
//

import Foundation

struct User: Identifiable, Codable {
    
    var id = UUID()
    var firstName: String
    var lastName: String
}
