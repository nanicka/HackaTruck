//
//  modoUm.swift
//  aula-4.2
//
//  Created by Turma01-22 on 23/09/24.
//

import SwiftUI

struct modoUm: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.darkblue)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Modo 1")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                Spacer()
                ZStack{
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 250, height: 150)
                        .cornerRadius(20)
                    VStack{
                        Spacer()
                        Text("Nome: Maria Nícolle")
                            .foregroundStyle(Color.white)
                            .font(.title2)

                        Text("Sobrenome: Queiroz")
                            .foregroundStyle(Color.white)
                            .font(.title2)
                        Spacer()
                    }
                    
                }
                
            } 
                
        }
        
    }
}

#Preview {
    modoUm()
}
