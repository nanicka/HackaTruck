//
//  play.swift
//  aula5
//
//  Created by Turma01-22 on 24/09/24.
//

import SwiftUI

struct play: View {
    let teste: song
    var gradient = Gradient(colors: [Color("darkBlue"), Color("black")])
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(LinearGradient(
                    gradient: gradient,
                    startPoint: .top, endPoint: .bottom
                ))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                AsyncImage(url: teste.capa){
                    image in
                    image.image?.resizable()
                        .frame(width: 200, height: 200)
                    
                }
                
                VStack{
                    Text(teste.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Text(teste.artist)
                        .font(.title2)
                        .foregroundColor(.white)
                }
                
                HStack{
                    Image(systemName: "shuffle")
                        .padding(.horizontal, 10)
                    Image(systemName: "backward.end.fill")
                        .padding(.horizontal, 10)
                    Image(systemName: "play.fill")
                        .font(.system(size: 50))
                        .padding(.horizontal, 10)
                    Image(systemName: "forward.end.fill")
                        .padding(.horizontal, 10)
                    Image(systemName: "repeat")
                        .padding(.horizontal, 10)
                }
                .foregroundColor(.white)
                .font(.system(size: 30))
                .padding()
                
            }
            
        }
        
    }
}

#Preview {
    play(teste: song(id: 1, name: "", artist: "", capa: URL (string: " ")!))
}
