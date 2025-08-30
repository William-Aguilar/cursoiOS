//
//  ApiNetwork.swift
//  cursoiOS
//
//  Created by will on 30/08/25.
//

import Foundation

class ApiNetwork{
    
    struct Wrapper:Codable{
        let response:String
        let results:[Superhero]
        let image:String	
    }
    
    struct Superhero:Codable, Identifiable{
        let id:String
        let name:String
    }
    
    func getHeroesByQuey(query:String) async throws -> Wrapper{
        let url = URL(string:"https://superheroapi.com/api/c12aa139ceb5aefdc37dcc65dbc852ff/search/\(query)")!
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        return wrapper
    }
}
