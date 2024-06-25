//
//  ConfirmationView.swift
//  appDaylyService
//
//  Created by formation on 19/06/2024.
//

import SwiftUI

struct ConfirmationView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Action to go back
                }) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text("Confirmation proposition")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
            HStack {
                Image("mario_photo") // Placeholder for neighbor's photo
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("MARIO")
                        .font(.headline)
                    Text("Vous avez choisi Mr DRAGI Mario pour réaliser ce service")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("4.8 / 5")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "car.fill")
                    Text("12.00 - Départ")
                    Spacer()
                    Text("4.7 Km")
                }
                HStack {
                    Image(systemName: "cart.fill")
                    Text("12.13 - Récupérer les courses")
                    Spacer()
                    Text("16 Km")
                }
                HStack {
                    Image(systemName: "house.fill")
                    Text("12.33 - Arrivée prévue")
                    Spacer()
                    Text("Reception à domicile")
                }
                HStack {
                    Text("Prix proposé : 9€")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Button(action: {
                // Action to contact
            }) {
                Text("Contacter")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
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

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView()
    }
}
