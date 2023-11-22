//
//  DefinitionsView.swift
//  TestCICDpriv
//
//  Created by Tomasz Kubicki on 22/11/2023.
//

import SwiftUI

struct DefinitionsView: View {
    @State var definition = "Breakaway Coupling"
    var body: some View {
        VStack {
            Picker("", selection: $definition) {
                ForEach(Definitions.sorted(by: <), id: \.key) { key, value in Text(key)
                }
            }
            Spacer()
            Text("\(Definitions.values[Definitions.index(forKey: definition)!])")
            Spacer()
        }
    }
}

#Preview {
    DefinitionsView()
}
