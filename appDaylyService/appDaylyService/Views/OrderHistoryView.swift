//
//  OrderHistoryView.swift
//  appDaylyService
//
//  Created by formation on 20/06/2024.
//

import SwiftUI

struct OrderHistoryView: View {
    var orderHistory: [String] = [
        "Commande 1: Produits alimentaires",
        "Commande 2: Médicaments",
        "Commande 3: Articles de bureau"
    ]
    
    var body: some View {
        List(orderHistory, id: \.self) { order in
            Text(order)
        }
        .navigationTitle("Historique des commandes")
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}

