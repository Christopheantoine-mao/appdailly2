//
//  UserProfileViewModel.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import Foundation
import Combine

class UserProfileViewModel: ObservableObject {
    @Published var user: User

    init() {
        self.user = User(id: UUID().uuidString, name: "Utilisateur", email: "utilisateur@example.com")
    }
}
