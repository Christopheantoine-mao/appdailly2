//
//  MapView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import SwiftUI
import MapKit

struct MapView: View {
    var origin: String
    var destination: String

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(for: origin)
            }
    }

    private func setRegion(for location: String) {
        // Implémenter la logique pour définir la région basée sur l'origine et la destination
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(origin: "Supermarché", destination: "Domicile")
    }
}
