//
//  ContentView.swift
//  aula6
//
//  Created by Turma01-22 on 25/09/24.
//

import SwiftUI
import MapKit
import Foundation

struct Local : Identifiable {
    let id = UUID()
    let name : String
    let cordenadas : CLLocationCoordinate2D
    let flag : URL
    let descricao : String
    
}

var arrayLocais = [

    Local(name: "Brazil", cordenadas: CLLocationCoordinate2D(latitude: -9.4258, longitude: -40.5032), flag: URL(string: "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/640px-Flag_of_Brazil.svg.png")!, descricao: "O Brasil é o maior país da América do Sul e o quinto maior do mundo, conhecido por sua diversidade cultural, rica biodiversidade e paisagens deslumbrantes. O país é famoso por suas florestas tropicais, especialmente a Amazônia, e por suas praias paradisíacas, como as de Copacabana e Ipanema. A capital é Brasília, uma cidade planejada e famosa por sua arquitetura moderna."),
    
    Local(name: "Japão", cordenadas: CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503), flag: URL(string: "https://s4.static.brasilescola.uol.com.br/be/2022/11/bandeira-do-japao.jpg")!, descricao: "O Japão é um arquipélago localizado no leste da Ásia, conhecido por sua rica cultura, tecnologia avançada e paisagens deslumbrantes. Composto por quatro ilhas principais — Honshu, Hokkaido, Kyushu e Shikoku — o país é famoso por sua harmonia entre tradição e modernidade. A capital é Tóquio, uma das cidades mais vibrantes e populosas do mundo, onde arranha-céus futuristas coexistem com templos antigos. O Japão é conhecido por suas tradições, como a cerimônia do chá, o ikebana (arte de arranjo floral) e festivais sazonais, como as festas das flores de cerejeira (sakura)."),
    Local(name: "Canadá", cordenadas: CLLocationCoordinate2D(latitude: 45.4215, longitude: -75.6972), flag: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/640px-Flag_of_Canada_%28Pantone%29.svg.png")!, descricao: "O Canadá é o segundo maior país do mundo, localizado na América do Norte, conhecido por sua diversidade cultural, belezas naturais e qualidade de vida. Com uma vasta extensão territorial, o país possui uma variedade de paisagens, incluindo montanhas, florestas, lagos e praias. A capital é Ottawa, situada na província de Ontário, e é famosa por suas instituições culturais e históricas, como o Parlamento e o Museu Canadense da História. Outras cidades importantes incluem Toronto, Vancouver e Montreal, cada uma com suas próprias características e culturas vibrantes.")
    

]


struct ContentView: View {
    
    @State private var position = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -9.4258, longitude: -40.5032), span: (MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5) )
    )
    
    @State var nomeLocal: String = "Brazil"
    @State var mostrarSheet: Bool = false
    @State var descricaoLocal: String = "O Brasil é o maior país da América do Sul e o quinto maior do mundo, conhecido por sua diversidade cultural, rica biodiversidade e paisagens deslumbrantes. O país é famoso por suas florestas tropicais, especialmente a Amazônia, e por suas praias paradisíacas, como as de Copacabana e Ipanema. A capital é Brasília, uma cidade planejada e famosa por sua arquitetura moderna."
    
    
    var body: some View {
        
        ZStack{
            
            Map(coordinateRegion: $position,  annotationItems: arrayLocais) { local in
                MapAnnotation(coordinate: local.cordenadas) {
                    
                    Button(action: {
                        nomeLocal = local.name
                        descricaoLocal = local.descricao
                        mostrarSheet = true
                        
                    }) {
                        VStack {
                            Text(local.name) // Texto da anotação
                                .font(.caption)
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(5)
                                .shadow(radius: 1)
                            
                            Image(systemName: "pin.fill") // Ícone do pino
                                .foregroundColor(.blue)
                                .font(.title)
                        }
                        .sheet(isPresented: $mostrarSheet){
                            ZStack{
                            Rectangle()
                            .fill(.white)
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            .ignoresSafeArea()
                                
                                VStack{
                                    
                                    Text("\(nomeLocal)")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(Color.black)
                                    
                                    AsyncImage(url: local.flag, scale: 2)
                                    
                                    Text("\(descricaoLocal)")
                                        .foregroundStyle(.black)
                                    
                                    
                                }
                                
                                
                            }
                        }
                        
                    }


                }
            }
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                
                ZStack(){
                    Rectangle()
                        .fill(Color.white)
                        .opacity(0.7)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 150)
                        .ignoresSafeArea()
                    
                    VStack{
                        Text("World map")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("\(nomeLocal)")
                        
                    }
                    .padding(.bottom, 90)
                    
                    
                }
                Spacer()
                
                HStack(alignment: .center){

                    ForEach(arrayLocais) { locai in
                        Button(action: {nomeLocal = locai.name; position.center = locai.cordenadas
                            
                        }) {
                            AsyncImage(url: locai.flag, scale: 6)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
                        }
                        
                    }
                    .padding(.horizontal, 1)

                    Spacer()
                }
                .padding(.leading, 35.0)
                .frame(maxWidth: .infinity, alignment: .center)

                
            }
        }
        

    }
}

#Preview {
    ContentView()
}
