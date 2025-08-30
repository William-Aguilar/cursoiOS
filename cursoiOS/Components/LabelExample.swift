//
//  LabelExample.swift
//  cursoiOS
//
//  Created by will on 29/08/25.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("SUSCRIBETE", image: "swiftui")
        Label("SUSCRIBETE", systemImage: "figure.walk")
        Label(
            title: { Text("Label")},
            icon: {
                Image("swiftui")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
            }
        )
    }
}

#Preview {
    LabelExample()
}
