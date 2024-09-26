//
//  ContentView.swift
//  aula-4
//
//  Created by Turma01-22 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack{
                
            
            TabView{
                RosaView()
                    .tabItem {
                        Text("Rosa")
                        Image(systemName: "paintbrush.fill")
                    }
                
                AzulView()
                    .tabItem {
                        Text("Azul")
                        Image(systemName: "paintbrush.pointed.fill")
                    }
                
                CinzaView()
                    .tabItem {
                        Text("Cinza")
                        Image(systemName: "paintpalette.fill")
                    }
                
                ListaView()
                    .tabItem {
                        Text("Lista")
                        Image(systemName: "list.bullet")
                        
                    }
                
            }
            .padding(.bottom, 10)
            
        }
        
    }
}

#Preview {
    ContentView()
}
