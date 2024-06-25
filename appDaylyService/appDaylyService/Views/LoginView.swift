//
//  LoginView.swift
//  appDaylyService
//
//  Created by formation on 20/06/2024.
//
import SwiftUI

struct LoginView: View {
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
                networkManager.login(email: email, password: password)
            }) {
                Text("Se connecter")
            }
            .padding()
        }
        .navigationTitle("Connexion")
    }
}
