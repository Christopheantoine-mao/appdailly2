//
//  BellView.swift
//  appDaylyService
//
//  Created by formation on 21/06/2024.
//

import SwiftUI

struct BellView: View {
    @ObservedObject var viewModel: ServiceRequestViewModel  // Assurez-vous que le ViewModel est observé

    var body: some View {
        ZStack {
            Image(systemName: "bell")
                .font(.title)
            if viewModel.unreadCount > 0 {
                Text("\(viewModel.unreadCount)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.red)
                    .clipShape(Circle())
                    .offset(x: 10, y: -10)
            }
        }
    }
}
