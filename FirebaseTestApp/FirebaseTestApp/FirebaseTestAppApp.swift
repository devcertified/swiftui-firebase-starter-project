//
//  FirebaseTestAppApp.swift
//  FirebaseTestApp
//
//  Created by admin on 17/04/2022.
//

import SwiftUI
import Firebase

@main
struct FirebaseTestAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
