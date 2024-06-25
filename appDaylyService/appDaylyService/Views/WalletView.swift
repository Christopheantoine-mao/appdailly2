//
//  WalletView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI
import Charts

struct WalletView: View {
    @State private var walletBalance: Double = 150.0
    @State private var transactions: [Transaction] = [
        Transaction(date: "01/06/2024", amount: 50.0),
        Transaction(date: "05/06/2024", amount: -20.0),
        Transaction(date: "10/06/2024", amount: 120.0),
        Transaction(date: "15/06/2024", amount: -100.0)
    ]

    var body: some View {
        NavigationView {
            VStack {
                Text("Cagnotte: \(walletBalance, specifier: "%.2f") €")
                    .font(.largeTitle)
                    .padding()

                Chart(transactions) { transaction in
                    BarMark(
                        x: .value("Date", transaction.date),
                        y: .value("Amount", transaction.amount)
                    )
                }
                .padding()

                List(transactions) { transaction in
                    HStack {
                        Text(transaction.date)
                        Spacer()
                        Text("\(transaction.amount, specifier: "%.2f") €")
                            .foregroundColor(transaction.amount >= 0 ? .green : .red)
                    }
                }
            }
            .navigationTitle("Cagnotte")
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}

struct Transaction: Identifiable {
    let id = UUID()
    let date: String
    let amount: Double
}
