//
//  Neighbor.swift
//  appDaylyService
//
//  Created by formation on 19/06/2024.
//

// Neighbor.swift
import Foundation

struct Neighbor: Identifiable, Codable {
    var id = UUID()
    var name: String
    var vehicle: String
    var isAvailable: Bool
}
