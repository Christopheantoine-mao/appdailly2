//
//  Service.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import Foundation

struct Service: Identifiable, Codable {
    var id: UUID
    var name: String
    var description: String
    var isAvailable: Bool
    var sender: String?
    var recipient: String?
    var origin: String?
    var destination: String?
    var amount: Double?
    var isAccepted: Bool?

    init(id: UUID = UUID(), name: String, description: String, isAvailable: Bool, sender: String? = nil, recipient: String? = nil, origin: String? = nil, destination: String? = nil, amount: Double? = nil, isAccepted: Bool? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.isAvailable = isAvailable
        self.sender = sender
        self.recipient = recipient
        self.origin = origin
        self.destination = destination
        self.amount = amount
        self.isAccepted = isAccepted
    }
}
