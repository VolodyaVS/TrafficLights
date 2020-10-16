//
//  ContentView.swift
//  TrafficLights
//
//  Created by Vladimir Stepanchikov on 16.10.2020.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct TrafficLightsView: View {
    
    // MARK: - Public Properties
    @State var currentLight = CurrentLight.red
    
    @State var opacityRedLight = 0.4
    @State var opacityYellowLight = 0.4
    @State var opacityGreenLight = 0.4
    
    @State var textButton = "START"

    var body: some View {
        
        ZStack {
            Color(.gray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40.0) {
                Circle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.red)
                    .opacity(opacityRedLight)
                    .overlay(
                        roundedRectangale
                            .stroke(strokeParameters, lineWidth: 5)
                    )
                
                Circle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.yellow)
                    .opacity(opacityYellowLight)
                    .overlay(
                        roundedRectangale
                            .stroke(strokeParameters, lineWidth: 5)
                    )
                Circle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.green)
                    .opacity(opacityGreenLight)
                    .overlay(
                        roundedRectangale
                            .stroke(strokeParameters, lineWidth: 5)
                    )
                Spacer()
                
                Button(action: {
                    changeLight()
                }) {
                    Text(textButton)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .frame(width: 150.0, height: 50.0)
                        .background(Color.gray)
                        .cornerRadius(40.0)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                        )
                }
            }
            .padding(.all)
            
        }
    }
    
    // MARK: - Private Properties
    private let roundedRectangale = RoundedRectangle(cornerRadius: 60)
    private let strokeParameters = Color(hue: 0.597,
                                         saturation: 0.389,
                                         brightness: 0.777)
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightsView()
    }
}
