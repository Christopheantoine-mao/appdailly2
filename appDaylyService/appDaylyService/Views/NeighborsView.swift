//
//  NeighnborsView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import SwiftUI

struct NeighborsView: View {
    @ObservedObject var networkManager: NetworkManager
    @State private var neighbors: [Neighbor] = [
        Neighbor(name: "Mario", vehicle: "Voiture", isAvailable: true),
        Neighbor(name: "Marie", vehicle: "Vélo", isAvailable: false)
    ]
    @State private var newName: String = ""
    @State private var newVehicle: String = "Voiture"
    let vehicles = ["Voiture", "Vélo", "Scooter"]

    var body: some View {
        VStack {
            List {
                ForEach(neighbors) { neighbor in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(neighbor.name)
                                .font(.headline)
                            Text(neighbor.vehicle)
                                .font(.subheadline)
                        }
                        Spacer()
                        Toggle(isOn: Binding(
                            get: { neighbor.isAvailable },
                            set: { newValue in
                                if let index = neighbors.firstIndex(where: { $0.id == neighbor.id }) {
                                    neighbors[index].isAvailable = newValue
                                }
                            }
                        )) {
                            Text("Disponible")
                        }
                        .labelsHidden()
                    }
                }
            }
            .navigationTitle("Voisins")
            
            Form {
                Section(header: Text("Ajouter un Voisin")) {
                    TextField("Nom", text: $newName)
                    Picker("Véhicule", selection: $newVehicle) {
                        ForEach(vehicles, id: \.self) {
                            Text($0)
                        }
                    }
                    Button(action: {
                        let neighbor = Neighbor(name: newName, vehicle: newVehicle, isAvailable: false)
                        neighbors.append(neighbor)
                        newName = ""
                        newVehicle = "Voiture"
                    }) {
                        Text("Ajouter")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
            }
        }
    }
}
