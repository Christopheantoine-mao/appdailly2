//
//  ServiceRequestListView.swift
//  appDaylyService
//
//  Created by formation on 21/06/2024.
//

import SwiftUI

struct ServiceRequestListView: View {
    @ObservedObject var networkManager: NetworkManager

    var body: some View {
        List(networkManager.services) { service in
            VStack(alignment: .leading) {
                Text(service.name)
                    .font(.headline)
                Text(service.description)
                    .font(.subheadline)
            }
        }
        .navigationTitle("Demandes de service")
        .onAppear {
            networkManager.fetchServices()
        }
    }
}
