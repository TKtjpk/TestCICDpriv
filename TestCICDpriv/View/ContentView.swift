//
//  ContentView.swift
//  TestCICDpriv
//
//  Created by Tomasz Kubicki on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = "world"
    var body: some View {
        VStack {
            Section("Definitions") {
                DefinitionsView()
            }
            .padding()
            Divider()
            Section("Temperature Converter") {
                ConverterView()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
