//
//  ButtonStart.swift
//  TrafficLights
//
//  Created by Vladimir Stepanchikov on 19.10.2020.
//

import SwiftUI

struct ButtonStart: View {
    
    var titleButton: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(titleButton)
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
        
}

struct ButtonStart_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStart(titleButton: "START", action: { })
    }
}
