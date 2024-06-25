//
//  ServiceListViewModel.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import Foundation
import Combine

class ServiceListViewModel: ObservableObject {
    @Published var services: [Service] = []

    init() {
        loadServices()
    }

    func loadServices() {
        services = [
            Service(id: UUID(), name: "Livraison de courses", description: "Demande de livraison de courses", isAvailable: true, sender: "Alice", recipient: "Bob", origin: "Supermarché", destination: "Domicile", amount: 10.0, isAccepted: false),
            Service(id: UUID(), name: "Livraison de médicaments", description: "Demande de livraison de médicaments", isAvailable: true, sender: "Charlie", recipient: "David", origin: "Pharmacie", destination: "Maison de retraite", amount: 5.0, isAccepted: false)
        ]
    }
}
