//
//  RequestsListView.swift
//  appDaylyService
//
//  Created by formation on 20/06/2024.
//

import SwiftUI

struct Request: Identifiable {
    let id = UUID()
    var title: String
    var description: String
    var category: String
    var isCompleted: Bool
}

struct RequestsListView: View {
    @State private var requests: [Request] = [
        Request(title: "Livraison", description: "Besoin de récupérer un colis", category: "Transport", isCompleted: false)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(requests) { request in
                    VStack(alignment: .leading) {
                        Text(request.title)
                            .font(.headline)
                        Text(request.description)
                            .font(.subheadline)
                        Text(request.category)
                            .font(.subheadline)
                        Button(action: {
                            // Logique pour annuler la requête
                            if let index = requests.firstIndex(where: { $0.id == request.id }) {
                                requests.remove(at: index)
                            }
                        }) {
                            Text("Annuler")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            .navigationTitle("Toutes les Requêtes")
        }
    }
}
