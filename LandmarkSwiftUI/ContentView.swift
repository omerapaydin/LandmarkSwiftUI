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
            
            CircleImage(image: Image(londonBridgeLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width*0.9, height:UIScreen.main.bounds.height*0.3 )
                .offset(y:UIScreen.main.bounds.height * -0.15)
        }
       
    }
}

#Preview {
    ContentView()
}
