//
//  ContentView.swift
//  aula2
//
//  Created by Turma01-22 on 19/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = " "
    @State private var alertaTeste: Bool = false
    var body: some View {
        ZStack {
            Image("plano de fundo")
                .frame(width: 300, height: 500)
                .blur(radius: 5)
                .opacity(0.5)
            
            
            VStack(alignment: .center){
                Text("Bem vindo, \(nome)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("Digite seu nome", text: $nome)
                    .multilineTextAlignment(.center)
//                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 60)
                    
                    
                Spacer()
                
                Image("logo")
                    .resizable()
                    .frame(width: 180, height: 100)
                Image("truck")
                    .resizable()
                    .frame(width: 250, height: 100)
                
                Spacer()
                
                Button("Entrar") {
                    alertaTeste = true
                }
                .buttonStyle(.bordered)
                .alert(isPresented: $alertaTeste){
                    Alert( title: Text("Alerta"), message: Text("Voce irá iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos lá")) )
                }
                .padding(.vertical, 10)

            }
        }
    }
}

#Preview {
    ContentView()
}
