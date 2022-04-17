//
//  ContentView.swift
//  FirebaseTestApp
//
//  Created by admin on 17/04/2022.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button {
                login()
            } label: {
                Text("Sign In")
            }

        }
        .padding()
    }
    
    //FUNCTION
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("Success - You have logged in!!!")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
