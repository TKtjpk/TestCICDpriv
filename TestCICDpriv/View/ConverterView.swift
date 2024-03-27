//
//  ConverterView.swift
//  TestCICDpriv
//
//  Created by Tomasz Kubicki on 22/11/2023.
//

import SwiftUI
import Combine

struct ConverterView: View {
    
    @State private var Fahrenheit = ""
    @State private var Celsius = ""
    @State private var Kelvin = ""
    @State private var updatingF: Bool = false
    @State private var updatingC: Bool = false
    @State private var updatingK: Bool = false
    
    var body: some View {
        VStack {
            SingleTempView(value: $Fahrenheit, scale: "Fahrenheit")
                .onTapGesture {
                    updatingF = true
                    updatingC = false
                    updatingK = false
                }
                .onReceive(Just(Fahrenheit)) { _ in
                    
                    guard updatingF else { return }
                    if let dFahrenheit = Double(Fahrenheit) {
                        
                        let dCelsius = Double(5) / Double(9) * ((Double(dFahrenheit)) - 32)
                        let dKelvin = (Double(dCelsius) ) + 273.15
                        
                        Celsius = String(format: "%.2f", dCelsius)
                        Kelvin = String(format: "%.2f", dKelvin)
                    }
                }
            SingleTempView(value: $Celsius, scale: "Celsius")
                .onTapGesture {
                    updatingF = false
                    updatingC = true
                    updatingK = false
                }
                .onReceive(Just(Celsius)) { _ in
                    
                    guard updatingC else { return }
                    if let dCelsius = Double(Celsius) {
                        
                        let dFahrenheit = ((Double(dCelsius) ) * 9 / 5) + 32
                        let dKelvin = (Double(dCelsius) ) + 273.15
                        
                        Fahrenheit = String(format: "%.2f", dFahrenheit)
                        Kelvin = String(format: "%.2f", dKelvin)
                    }
                }
            SingleTempView(value: $Kelvin, scale: "Kelvin")
                .onTapGesture {
                    updatingF = false
                    updatingC = false
                    updatingK = true
                }
                .onReceive(Just(Kelvin)) { _ in
                    
                    guard updatingK else { return }
                    if let dKelvin = Double(Kelvin) {
                        let dCelsius = (Double(Kelvin) ?? 0.00) - 273.15
                        let dFahrenheit = ((Double(dCelsius) ) * 9 / 5) + 32
                        
                        Fahrenheit = String(format: "%.2f", dFahrenheit)
                        Celsius = String(format: "%.2f", dCelsius)
                    }
                }
        }
    }
}

#if DEBUG
#Preview {
    ConverterView()
}
#endif
