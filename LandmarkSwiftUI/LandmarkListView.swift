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
                    Image(landmark.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .leading)
                    Text(landmark.name)

                }
            }
        }
    }
}

#Preview {
    LandmarkListView()
}
