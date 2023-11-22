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
                .onSubmit {
                    let dCelsius = Double(5) / Double(9) * ((Double(Fahrenheit) ?? 0.00) - 32)
                    Celsius = String(format: "%.2f", dCelsius)
                    let dKelvin = dCelsius + 273.15
                    Kelvin = String(format: "%.2f", dKelvin)
                }
            SingleTempView(value: $Celsius, scale: "Celsius")
                .onSubmit {
                    let dFahrenheit = ((Double(Celsius) ?? 0.00) * 9 / 5) + 32
                    Fahrenheit = String(format: "%.2f", dFahrenheit)
                    let dKelvin = dFahrenheit + 273.15
                    Kelvin = String(format: "%.2f", dKelvin)
                }
            SingleTempView(value: $Kelvin, scale: "Kelvin")
                .onSubmit {
                    let dCelsius = (Double(Kelvin) ?? 0.00) - 273.15
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
