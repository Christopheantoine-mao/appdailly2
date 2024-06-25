//
//  CreateServiceView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct CreateServiceView: View {
    @ObservedObject var networkManager: NetworkManager
    @State private var name: String = ""
    @State private var description: String = ""

    var body: some View {
        VStack {
            TextField("Nom du service", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Description du service", text: $description)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                networkManager.createService(name: name, description: description)
            }) {
                Text("Créer le service")
            }
            .padding()
        }
        .navigationTitle("Créer un service")
    }
}
