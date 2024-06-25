//
//  Message.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import Foundation

struct Message: Identifiable {
    let id: UUID = UUID()
    var sender: String
    var content: String
}
