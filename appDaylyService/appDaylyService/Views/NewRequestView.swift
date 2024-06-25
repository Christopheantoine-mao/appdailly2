//
//  NewRequestView.swift
//  appDaylyService
//
//  Created by formation on 19/06/2024.
//
import SwiftUI

struct NewRequestView: View {
    @State private var requestTitle: String = ""
    @State private var requestDescription: String = ""
    @State private var selectedCategory: String = "Transport"
    let categories = ["Transport", "Shopping", "Covoiturage", "Rendez-vous"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Nouvelle Requête")) {
                    TextField("Titre", text: $requestTitle)
                    TextField("Description", text: $requestDescription)
                    Picker("Catégorie", selection: $selectedCategory) {
                        ForEach(categories, id: \.self) {
                            Text($0)
                        }
                    }
                }

                Button(action: {
                    // Action to save the request
                }) {
                    Text("Enregistrer")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .buttonStyle(PrimaryButtonStyle())
            }
            .navigationTitle("Créer une Requête")
        }
    }
}

struct NewRequestView_Previews: PreviewProvider {
    static var previews: some View {
        NewRequestView()
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
