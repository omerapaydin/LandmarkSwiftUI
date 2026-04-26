//
//  MapView.swift
//  LandmarkSwiftUI
//
//  Created by Ömer on 27.04.2026.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
   
    
    var coordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

#Preview {
    MapView(coordinate: landmarkArray[0].locationCoordinates)
}
