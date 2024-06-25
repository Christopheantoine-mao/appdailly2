//
//  ServiceListView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct ServiceListView: View {
    @StateObject private var viewModel = NetworkManager() // Utiliser NetworkManager

    var body: some View {
        NavigationView {
            List(viewModel.services) { service in
                NavigationLink(destination: ServiceRequestDetailView(request: service, networkManager: viewModel)) {
                    Text(service.name)
                }
            }
            .navigationTitle("Services")
            .onAppear {
                viewModel.fetchServices()
            }
        }
    }
}

struct ServiceListView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceListView()
    }
}
