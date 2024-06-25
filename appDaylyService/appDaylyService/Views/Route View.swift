//
//  Route View.swift
//  appDaylyService
//
//  Created by formation on 19/06/2024.
//

import SwiftUI
import MapKit

struct RouteView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 45.523064, longitude: -122.676483),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Action to go back
                }) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text("Itinéraire pour : Shopping")
                    .font(.headline)
                Spacer()
            }
            .padding()
            
        Map(coordinateRegion: $region)
            
            Spacer()
            
            Button(action: {
                // Action to choose neighbor
            }) {
                Text("Choisir ce voisin")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
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

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
