//
//  ServiceRequestViewModel.swift
//  appDaylyService
//
//  Created by formation on 21/06/2024.
//
import Combine
import Foundation

class ServiceRequestViewModel: ObservableObject {
    @Published var serviceRequests: [Service] = []
    @Published var unreadCount: Int = 0
    @Published var newRequestCount: Int = 0
    
    init() {
        loadRequests()
    }

    func loadRequests() {
        serviceRequests = [
            Service(id: UUID(), name: "Livraison de courses", description: "Demande de livraison de courses", isAvailable: true, sender: "Alice", recipient: "Bob", origin: "Supermarché", destination: "Domicile", amount: 10.0, isAccepted: false),
            Service(id: UUID(), name: "Livraison de médicaments", description: "Demande de livraison de médicaments", isAvailable: true, sender: "Charlie", recipient: "David", origin: "Pharmacie", destination: "Maison de retraite", amount: 5.0, isAccepted: false)
        ]
        updateUnreadCount()
        updateNewRequestCount()
    }
    
    func updateUnreadCount() {
        unreadCount = serviceRequests.filter { $0.isAccepted == false }.count
    }

    func updateNewRequestCount() {
        newRequestCount = serviceRequests.count
    }
    
    func acceptRequest(_ request: Service) {
        if let index = serviceRequests.firstIndex(where: { $0.id == request.id }) {
            serviceRequests[index].isAccepted = true
            updateUnreadCount()
            updateNewRequestCount()
        }
    }
    
    func addRequest(_ request: Service) {
        serviceRequests.append(request)
        updateUnreadCount()
        updateNewRequestCount()
    }
}
