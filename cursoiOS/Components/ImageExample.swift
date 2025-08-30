//
//  ImageExample.swift
//  cursoiOS
//
//  Created by will on 29/08/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("swiftui")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 90)
        Image(systemName: "figure.walk")
            .resizable()
            .frame(width: 50, height: 90)
    }
}

#Preview {
    ImageExample()
}
