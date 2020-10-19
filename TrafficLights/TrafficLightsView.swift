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
    
    // MARK: - Private Properties
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    // MARK: - Private Methods
    private func changeColor() {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    // MARK: - Public Properties
    var body: some View {
        
        ZStack {
            Color(.gray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40.0) {
                ColorTrafficLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                ColorTrafficLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorTrafficLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                Spacer()
                ButtonStart(titleButton: buttonTitle) {
                    buttonTitle = "NEXT"
                    changeColor()
                }
            }
            .padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightsView()
    }
}
