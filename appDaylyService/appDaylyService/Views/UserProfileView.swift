//
//  UserProfileView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack {
            Text("Profil Utilisateur")
                .font(.largeTitle)
                .padding()

            Text("Name: John Doe")
            Text("Email: john.doe@example.com")
            Text("Phone: 123-456-7890")
            Text("Address: 123 Main St, Cityville")

            NavigationLink(destination: EditProfileView()) {
                Text("Modifier")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Button(action: {
                // Action de déconnexion
            }) {
                Text("Se déconnecter")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
