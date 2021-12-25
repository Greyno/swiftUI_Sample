//
//  Sample_PassDataApp.swift
//  Sample_PassData
//
//  Created by G Reynolds on 12/5/21.
//

import SwiftUI

@main
struct Samples_PassDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserStore())
        }
    }
}
