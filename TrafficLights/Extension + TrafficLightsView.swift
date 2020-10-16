//
//  Extension + TrafficLightsView.swift
//  TrafficLights
//
//  Created by Vladimir Stepanchikov on 16.10.2020.
//

import Foundation

extension TrafficLightsView {
    
    func changeLight() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.4
        
        textButton = "NEXT"
        switch currentLight {
        case .red:
            opacityGreenLight = lightIsOff
            opacityRedLight = lightIsOn
            currentLight = .yellow
        case .yellow:
            opacityRedLight = lightIsOff
            opacityYellowLight = lightIsOn
            currentLight = .green
        case .green:
            opacityGreenLight = lightIsOn
            opacityYellowLight = lightIsOff
            currentLight = .red
        }
        
    }
    
}
