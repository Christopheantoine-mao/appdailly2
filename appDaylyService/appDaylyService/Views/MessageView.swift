//
//  MessageView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct MessagesView: View {
    @State private var messages: [Message] = [
        Message(sender: "Mario", content: "Bonjour ! J'ai besoin de récupérer mes courses au drive de Centre 2. Pouvez-vous m'aider ?")
    ]
    @State private var newMessage: String = ""

    var body: some View {
        NavigationView {
            VStack {
                List(messages) { message in
                    VStack(alignment: .leading) {
                        Text(message.sender)
                            .font(.headline)
                        Text(message.content)
                            .font(.subheadline)
                    }
                }
                HStack {
                    TextField("Nouveau message", text: $newMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Button(action: {
                        messages.append(Message(sender: "Moi", content: newMessage))
                        newMessage = ""
                    }) {
                        Text("Envoyer")
                    }
                    .padding()
                }
            }
            .navigationTitle("Messages")
        }
    }
}
