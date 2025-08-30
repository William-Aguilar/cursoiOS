//
//  ContentView.swift
//  cursoiOS
//
//  Created by will on 29/08/25.
//

import SwiftUI

struct Excercise1: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.orange)
                Rectangle()
                    .foregroundStyle(.yellow)
            }.frame(height: 100)
            Rectangle()
                .foregroundStyle(.orange)
                .frame(height: 100)
            HStack {
                Circle()
                    .foregroundStyle(.green)
                Rectangle()
                    .frame(width: 120)
                    .foregroundStyle(.black)
                Circle()
                    .foregroundStyle(.indigo)
            }.frame(height: 250)
            Rectangle()
                .foregroundStyle(.orange)
                .frame(height: 100)
            HStack {
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.orange)
                Rectangle()
                    .foregroundStyle(.yellow)
            }.frame(height: 100)
        }
        .background(.red)
    }
}

#Preview {
    Excercise1()
}
