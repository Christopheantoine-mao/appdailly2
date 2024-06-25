//
//  appDaylyServiceApp.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import SwiftUI

@main
struct appDaylyServiceApp: App {
    @StateObject var networkManager = NetworkManager()
    @State private var isSplashScreenActive: Bool = true

    var body: some Scene {
        WindowGroup {
            ZStack {
                if isSplashScreenActive {
                    SplashScreenView(isActive: $isSplashScreenActive)
                } else {
                    if networkManager.isLoggedIn {
                        MainTabView(networkManager: networkManager)
                    } else {
                        LoginView(networkManager: networkManager)
                    }
                }
            }
        }
    }
}
