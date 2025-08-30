//
//  MenuView.swift
//  cursoiOS
//
//  Created by will on 29/08/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink(destination:IMCView()){
                    Text("IMC Calculator")
                }
                NavigationLink(destination:SuperheroSearcher()){
                    Text("Superhero finder")
                }
                Text("App 3")
                Text("App 4")
                Text("App 5")
            }
        }
    }
}

#Preview {
    MenuView()
}
