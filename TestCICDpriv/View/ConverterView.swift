//
//  ConverterView.swift
//  TestCICDpriv
//
//  Created by Tomasz Kubicki on 22/11/2023.
//

import SwiftUI

struct ConverterView: View {
    
    @State var Fahrenheit = "0.00"
    @State var Celsius = "-17.78"
    @State var Kelvin = "255.37"
    var body: some View {
        VStack {
            SingleTempView(value: $Fahrenheit, scale: "Fahrenheit")
                .onChange(of: Fahrenheit) { newValue in
                    let dCelsius = Double(5) / Double(9) * ((Double(newValue) ?? 0.00) - 32)
                    Celsius = String(format: "%.2f", dCelsius)
                    let dKelvin = dCelsius + 273.15
                    Kelvin = String(format: "%.2f", dKelvin)                }
            SingleTempView(value: $Celsius, scale: "Celsius")
                .onChange(of: Celsius) { newValue in
                    let dFahrenheit = ((Double(newValue) ?? 0.00) * 9 / 5) + 32
                    Fahrenheit = String(format: "%.2f", dFahrenheit)
                    let dKelvin = (Double(newValue) ?? 0.00) + 273.15
                    Kelvin = String(format: "%.2f", dKelvin)
                }
            SingleTempView(value: $Kelvin, scale: "Kelvin")
                .onChange(of: Kelvin) { newValue in
                    let dCelsius = (Double(newValue) ?? 0.00) - 273.15
                    Celsius = String(format: "%.2f", dCelsius)
                    let dFahrenheit = ((Double(dCelsius) ) * 9 / 5) + 32
                    Fahrenheit = String(format: "%.2f", dFahrenheit)
                }
        }
    }
}

#if DEBUG
#Preview {
    ConverterView()
}
#endif
