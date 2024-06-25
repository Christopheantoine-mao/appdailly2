//
//  ForgotPassordView.swift
//  appDaylyService
//
//  Created by formation on 20/06/2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    @ObservedObject var networkManager: NetworkManager
    @State private var email: String = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                networkManager.resetPassword(email: email)
            }) {
                Text("Réinitialiser le mot de passe")
            }
            .padding()
        }
        .navigationTitle("Mot de passe oublié")
    }
}
