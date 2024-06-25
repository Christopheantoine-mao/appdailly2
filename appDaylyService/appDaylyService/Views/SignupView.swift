//
//  SignupView.swift
//  appDaylyService
//
//  Created by formation on 20/06/2024.
//

import SwiftUI

struct SignupView: View {
    @ObservedObject var networkManager: NetworkManager
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Mot de passe", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                networkManager.signup(email: email, password: password)
            }) {
                Text("Créer un compte")
            }
            .padding()
        }
        .navigationTitle("Inscription")
    }
}
