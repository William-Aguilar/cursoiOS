//
//  SuperheroSearcher.swift
//  cursoiOS
//
//  Created by will on 30/08/25.
//

import SwiftUI

struct SuperheroSearcher: View {
    @State var superheroName:String = ""
    @State var wrapper:ApiNetwork.Wrapper? = nil
    var body: some View {
        VStack{
            TextField("", text: $superheroName, prompt: Text("Superman...").bold().font(.title2).foregroundColor(.gray))
                .bold()
                .font(.title2)
                .foregroundColor(.white)
                .padding(16)
                .border(.purple, width: 1.5)
                .padding(8)
                .autocorrectionDisabled()
                .onSubmit {
                    print(superheroName)
                    Task{
                        do{
                            let wrapper = try await ApiNetwork().getHeroesByQuey(query: superheroName)
                        }catch{
                            print("Error")
                        }
                    }
                }
            List(wrapper?.results ?? []){ superhero in
                SuperheroItem(superhero: superhero)
            }.listStyle(.plain)
            
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundApp)
    }
}

struct SuperheroItem:View {
    let superhero:ApiNetwork.Superhero
    var body: some View {
        ZStack{
            Rectangle()
            VStack{
                Spacer()
                Text(superhero.name).foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.5))
            }
        }.frame(height: 200).cornerRadius(32).listRowBackground(Color.backgroundApp)
    }
}

#Preview {
//    SuperheroItem(superhero: ApiNetwork.Superhero(id:"", name:"Will"))
    SuperheroSearcher()
}
