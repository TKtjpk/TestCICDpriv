//
//  SingleTempView.swift
//  TestCICDpriv
//
//  Created by Tomasz Kubicki on 22/11/2023.
//

import SwiftUI
struct SingleTempView: View {
    @Binding var value: String
    var scale = ""
    var body: some View {
        HStack {
            ZStack(alignment: .center) {
                Rectangle()
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadii: .init(topLeading: 10, bottomLeading: 10, bottomTrailing: 10, topTrailing: 10)))
                    .shadow(radius: 4, x: -5, y: 5)
                Text(scale + ": ")
                    .foregroundStyle(.black)
            }
            .frame( height: 40)
            Spacer()
            ZStack(alignment: .center) {
                Rectangle()
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadii: .init(topLeading: 10, bottomLeading: 10, bottomTrailing: 10, topTrailing: 10)))
                    .shadow(radius: 4, x: -5, y: 5)
                TextField("Temperature:", text: $value)
                    .padding(EdgeInsets(.init(top: 0, leading: 10, bottom: 0, trailing: 10)))
                    .keyboardType(.numbersAndPunctuation)
                    .foregroundStyle(.black)
            }
            .frame(height: 40)
        }
    }
}

#if DEBUG
#Preview {
    SingleTempView(value: .constant("0.0"))
}
#endif
