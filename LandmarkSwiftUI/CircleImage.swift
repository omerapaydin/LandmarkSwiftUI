//
//  CircleImage.swift
//  LandmarkSwiftUI
//
//  Created by Ömer on 27.04.2026.
//

import SwiftUI

struct CircleImage: View {
    
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 5)
        
    }
}

#Preview {
    CircleImage(image: Image("londonbridge"))
}
