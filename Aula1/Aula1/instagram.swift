//
//  instagram.swift
//  Aula1
//
//  Created by Turma01-22 on 18/09/24.
//

import SwiftUI

struct instagram: View {
    var body: some View {
        VStack( alignment: .leading){
            HStack(alignment: .top) { //primeira parte
                Image("Nanika")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .cornerRadius(80)
                    .padding(.leading, 10)
                Spacer()
                VStack(spacing: 10){ //numeros e button
                    HStack{ //numero
                        VStack{ //post
                            Text("8")
                            Text("Posts")
                                .font(.subheadline)
                        }
                        
                        VStack{
                            Text("12K")
                            Text("Seguidores")
                                .font(.subheadline)
                        }
                        
                        VStack{
                            Text("2K")
                            Text("Seguindo")
                                .font(.subheadline)
                        }
                        
                    }
                    Button {
                        
                    } label: {
                        Text("Editar Perfil")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                }
                .padding(10)
                
            }
            VStack{
                Text("Nicolle Queiroz")
                    .font(.headline)
                    .padding(.leading)
                Text("Computer engineer")
                    .font(.caption)
                
            }
            .padding(.top)
            HStack{
                Image(systemName: "square.grid.3x3.fill")
                Spacer()
                Image(systemName: "play.rectangle.fill")
                Spacer()
                Image(systemName: "person.circle.fill")
            }
            .padding(.horizontal, 50)
            .padding(.vertical, 20)
            Spacer()
            HStack{
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)

            }
            HStack{
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)

            }
            HStack{
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("3")
                    .resizable()
                    .frame(width: 120, height: 120)

            }
            
            
        }

    }
}

#Preview {
    instagram()
}
