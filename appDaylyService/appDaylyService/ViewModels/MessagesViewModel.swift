//
//  MessagesViewModel.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI
import Combine

class MessagesViewModel: ObservableObject {
    @Published var messages: [Message] = []

    init() {
        loadMessages()
    }

    func loadMessages() {
        messages = [
            Message(sender: "Mario", content: "Bonjour ! J’ai besoin de récupérer mes courses au drive de Centre 2. Pouvez-vous m’aider ?"),
            Message(sender: "Marie", content: "Bonjour ! Je cherche une aide pour pouvoir chercher une course au..."),
            Message(sender: "Jean", content: "Bonjour ! Je cherche une aide pour pouvoir chercher une course au..."),
            Message(sender: "Sophie", content: "Bonjour ! Je cherche une aide pour pouvoir chercher une course au..."),
            Message(sender: "Marc", content: "Bonjour ! Je cherche une aide pour pouvoir chercher une course au...")
        ]
    }
}
