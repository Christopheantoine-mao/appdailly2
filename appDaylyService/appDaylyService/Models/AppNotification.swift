//
//  AppNotification.swift
//  appDaylyService
//
//  Created by formation on 24/06/2024.
//

import Foundation

struct AppNotification: Identifiable, Codable {
    var id: UUID
    var type: String
    var message: String
    var isRead: Bool
}
