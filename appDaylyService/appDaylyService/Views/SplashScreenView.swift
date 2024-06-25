//
//  SplashScreenView.swift
//  appDaylyService
//
//  Created by formation on 18/06/2024.
//
import SwiftUI

struct SplashScreenView: View {
    @Binding var isActive: Bool

    var body: some View {
        VStack {
            // Contenu de votre splash screen
            Text("Splash Screen")
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isActive = false
            }
        }
    }
}
