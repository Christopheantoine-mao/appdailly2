//
//  ServiceRequestDetailView.swift
//  appDaylyService
//
//  Created by formation on 21/06/2024.
//
import SwiftUI

struct ServiceRequestDetailView: View {
    var request: Service
    @ObservedObject var networkManager: NetworkManager

    var body: some View {
        VStack {
            Text(request.name)
                .font(.largeTitle)
                .padding()
            Text(request.description)
                .padding()
            // Ajoutez d'autres détails du service ici

            if request.isAccepted ?? false {
                Text("Demande acceptée")
                    .font(.headline)
                    .padding()
            } else {
                Button(action: {
                    // Logique pour accepter la demande
                    // Utilisez networkManager pour mettre à jour l'état du service
                }) {
                    Text("Accepter la demande")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct ServiceRequestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceRequestDetailView(request: Service(id: UUID(), name: "Livraison de courses", description: "Demande de livraison de courses", isAvailable: true, sender: "Alice", recipient: "Bob", origin: "Supermarché", destination: "Domicile", amount: 15.0, isAccepted: false), networkManager: NetworkManager())
    }
}
