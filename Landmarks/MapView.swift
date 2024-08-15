//
//  MapView.swift
//  Landmarks
//
//  Created by 밀가루 on 8/15/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        VStack {
            Map(initialPosition: .region(region))
                .frame(height: 300)

            ContentView()
                .offset(y: -120)
                .padding(.bottom, -120)

            VStack(alignment: .leading, spacing: 12) {
                Text("Landmarks")
                    .font(.title)
                    .fontWeight(.bold)
                HStack {
                    Text("서울")
                        .font(.subheadline)
                    Spacer()
                    Text("서어어어우우우우울")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.978),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
