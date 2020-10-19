//
//  ColorLight.swift
//  TrafficLights
//
//  Created by Vladimir Stepanchikov on 19.10.2020.
//

import SwiftUI

struct ColorTrafficLight: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(
                RoundedRectangle(cornerRadius: 60)
                    .stroke(Color(hue: 0.597,
                                  saturation: 0.389,
                                  brightness: 0.777), lineWidth: 5)
            )
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorTrafficLight(color: .red, opacity: 0.3)
    }
}
