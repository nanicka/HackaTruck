//
//  viewMode.swift
//  Aula 8
//
//  Created by Turma01-22 on 30/09/24.
//

import Foundation

class viewMode : ObservableObject{
    
    @Published var catFact: String = ""
    
    func fetch(){
        
        guard let url = URL(string: "https://catfact.ninja/fact") else { return }
                
                let task = URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data, error == nil else {
                        print("Error fetching data: \(error?.localizedDescription ?? "Unknown error")")
                        return
                    }
                    
                    do {
                        let decodedFact = try JSONDecoder().decode(cat.self, from: data)
                        DispatchQueue.main.async {
                            self.catFact = decodedFact.fact
                        }
                    } catch {
                        print("Error decoding: \(error)")
                    }
                }
        task.resume()
        
    }
    
}
