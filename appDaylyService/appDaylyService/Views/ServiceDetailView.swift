//
//  ServiceDetailView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct ServiceDetailView: View {
    var request: Service
    @ObservedObject var viewModel: ServiceRequestViewModel

    var body: some View {
        VStack {
            Text(request.description)
                .font(.largeTitle)
                .padding()

            Text("From: \(request.origin ?? "Unknown origin")")
            Text("To: \(request.destination ?? "Unknown destination")")
            Text("Amount: \(String(format: "%.2f", request.amount ?? 0.0)) €")

            if request.isAccepted == false {
                Button(action: {
                    viewModel.acceptRequest(request)
                }) {
                    Text("Accepter la demande")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            } else {
                Text("Demande acceptée")
                    .font(.headline)
                    .padding()
                if let origin = request.origin, let destination = request.destination {
                    MapView(origin: origin, destination: destination)
                }
            }
        }
        .padding()
    }
}
