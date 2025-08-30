//
//  ButtonExample.swift
//  cursoiOS
//
//  Created by will on 29/08/25.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Hola") {
            print("Hola")
        }
        Button (action: { print("Hola")}, label: {
            Text("Hola")
                .frame(width: 100, height: 50)
                .foregroundStyle(.white)
                .background(.blue)
                .cornerRadius(10)
        })
    }
}

struct Counter:View {
    @State var subscribersNumber = 0
    var body: some View {
        Button (action: { subscribersNumber += 1 }, label: {
            Text("Suscriptores: \(subscribersNumber)")
                .bold()
                .padding(20)
                .font(.title)
                .frame(height: 50)
                .foregroundStyle(.white)
                .background(.red)
                .cornerRadius(10)
        })
    }
}

#Preview {
    Counter()
}
