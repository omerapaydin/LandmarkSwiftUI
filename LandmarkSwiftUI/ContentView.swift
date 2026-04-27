//
//  ContentView.swift
//  LandmarkSwiftUI
//
//  Created by Ömer on 27.04.2026.
//

import SwiftUI

struct ContentView: View {
    
    var chosenLandmark: Landmark
    
    var body: some View {
        VStack {
           MapView(coordinate: chosenLandmark.locationCoordinates)
                .edgesIgnoringSafeArea(.top)
                .frame(height: UIScreen.main.bounds.height*0.3)
            
            CircleImage(image: Image(chosenLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width*0.9, height:UIScreen.main.bounds.height*0.3 )
                .offset(y:UIScreen.main.bounds.height * -0.15)
                .padding(.bottom,-150)
            
            
            VStack(alignment:.leading){
             Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                
                HStack{
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(chosenLandmark.category)
                        .font(.subheadline)
                }
                
                
            }.padding()
            Spacer()
        }
       
    }
}

#Preview {
    ContentView(chosenLandmark: londonBridgeLandmark)
}
