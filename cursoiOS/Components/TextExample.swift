//
//  TextExample.swift
//  cursoiOS
//
//  Created by will on 29/08/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
            Text("Custom").font(.system(
                size: 40, weight: .light, design: .monospaced
            ))
            .italic()
            .bold()
            .underline()
            .foregroundColor(.blue)
            .background(.red)
            Text("Will will will will will will will")
                .frame(width: 150)
                .lineLimit(3)
                .lineSpacing(125)
        }
    }
}

#Preview {
    TextExample()
}
