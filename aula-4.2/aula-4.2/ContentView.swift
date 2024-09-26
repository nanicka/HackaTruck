//
//  ContentView.swift
//  aula-4.2
//
//  Created by Turma01-22 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Rectangle()
                    .fill(Color.darkblue)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 290, height: 150)
                    Spacer()
                    VStack{
                        
                        NavigationLink(destination: modoUm()){
                            Text("Modo 1")
                            
                        }
                        .frame(width: 250, height: 100)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .cornerRadius(15)
                        
                        NavigationLink(destination: modoDois()){
                            Text("Modo 2")
                                .frame(width: 250, height: 100)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .background(Color.pink)
                                .cornerRadius(15)
                        }
                        
                        Button("Modo 3") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 250, height: 100)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .cornerRadius(15)
                        
                        
                    }
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
