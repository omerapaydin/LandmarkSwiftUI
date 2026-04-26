//
//  ContentView.swift
//  LandmarkSwiftUI
//
//  Created by Ömer on 27.04.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           MapView(coordinate: londonBridgeLandmark.locationCoordinates)
                .frame(height: UIScreen.main.bounds.height*0.3)
        }
       
    }
}

#Preview {
    ContentView()
}
