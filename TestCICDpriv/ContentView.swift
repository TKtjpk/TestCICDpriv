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
            TextEditor(text: $name)
                .frame(width: CGFloat(name.count * 15), height: CGFloat(35), alignment: .center)
                .shadow(radius: 2)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, \(name)!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
