//
//  TravelHistoryView.swift
//  appDaylyService
//
//  Created by formation on 20/06/2024.
//

import SwiftUI

struct TravelHistoryView: View {
    var travelHistory: [String] = [
        "Trajet 1: Centre 2 à Supermarché",
        "Trajet 2: Domicile à Pharmacie",
        "Trajet 3: Bureau à École"
    ]
    
    var body: some View {
        List(travelHistory, id: \.self) { travel in
            Text(travel)
        }
        .navigationTitle("Historique des trajets")
    }
}

struct TravelHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TravelHistoryView()
    }
}
