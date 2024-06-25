//
//  NeighborListView.swift
//  appDaylyService
//
//  Created by formation on 19/06/2024.
//

import SwiftUI

struct NeighborListView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Action to go back
                }) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text("Choisir un voisin")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
            List {
                NeighborRow(name: "Mario", rating: 4.8, service: "Transport", distance: 20.7)
                NeighborRow(name: "Marc", rating: 4.7, service: "Transport", distance: 20.7)
                NeighborRow(name: "Charles", rating: 4.8, service: "Vélo", distance: 20.7)
                NeighborRow(name: "Marie", rating: 4.4, service: "Vélo", distance: 20.7)
                NeighborRow(name: "Jean", rating: 4.6, service: "Transport", distance: 20.7)
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "house.fill")
                Image(systemName: "person.2.fill")
                Image(systemName: "plus.circle.fill")
                Image(systemName: "piggy.bank.fill")
                Image(systemName: "message.fill")
            }
            .padding()
        }
    }
}

struct NeighborRow: View {
    var name: String
    var rating: Double
    var service: String
    var distance: Double
    
    var body: some View {
        HStack {
            Image("neighbor_photo") // Placeholder for neighbor's photo
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text("Je souhaite vous aider au quotidien dans des tâches de la vie courante avec ma voiture.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text("\(rating, specifier: "%.1f")")
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct NeighborListView_Previews: PreviewProvider {
    static var previews: some View {
        NeighborListView()
    }
}
