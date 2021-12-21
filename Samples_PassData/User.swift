//
//  User.swift
//  Samples_PassData
//
//  Created by Gillian Reynolds-Titko on 12/7/21.
//

import SwiftUI

class User: ObservableObject {

    @Published var firsts = ["Jane", "Bob", "Henry", "Susan"]
    @Published var lasts = ["Doe", "Smith", "Brown", "Headley"]
   
}
