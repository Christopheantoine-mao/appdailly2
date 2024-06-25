//
//  UserProfileTabView.swift
//  appDaylyService
//
//  Created by formation on 21/06/2024.
//
import SwiftUI

struct UserProfileTabView: View {
    @ObservedObject var networkManager: NetworkManager

    var body: some View {
        VStack {
            if let user = networkManager.user {
                Text("Name: \(user.name)")
                Text("Email: \(user.email)")
                // Ajoutez d'autres informations de profil ici
            } else {
                Text("Aucun utilisateur connecté")
            }
        }
        .navigationTitle("Profil")
    }
}
