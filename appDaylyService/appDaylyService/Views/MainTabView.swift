//
//  MainTabView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import SwiftUI

struct MainTabView: View {
    @ObservedObject var networkManager: NetworkManager

    var body: some View {
        TabView {
            HomeView(networkManager: networkManager)
                .tabItem {
                    Label("Accueil", systemImage: "house")
                }
            NeighborsView(networkManager: networkManager)
                .tabItem {
                    Label("Voisins", systemImage: "person.2")
                }
            CreateServiceView(networkManager: networkManager)
                .tabItem {
                    Label("Créer", systemImage: "plus.circle")
                }
            UserProfileTabView(networkManager: networkManager)
                .tabItem {
                    Label("Profil", systemImage: "person")
                }
            ServiceRequestListView(networkManager: networkManager)
                .tabItem {
                    Label("Demandes", systemImage: "bell")
                }
        }
    }
}
