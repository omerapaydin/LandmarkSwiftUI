//
//  LandmarkListView.swift
//  LandmarkSwiftUI
//
//  Created by Ömer on 27.04.2026.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView {
            List(landmarkArray) { landmark in
                NavigationLink(destination: ContentView(chosenLandmark: landmark)) {
                    Text(landmark.name)
                }
            }
        }
    }
}

#Preview {
    LandmarkListView()
}
