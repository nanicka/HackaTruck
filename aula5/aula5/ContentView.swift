//
//  ContentView.swift
//  aula5
//
//  Created by Turma01-22 on 24/09/24.
//

import SwiftUI

struct song : Identifiable{
    
    var id: Int
    var name: String
    var artist : String
    var capa : URL
    
}

var arraySongs = [

    song(id: 1, name: "The Emptiness Machine" , artist: "Linkin Park" , capa: URL(string: "https://i.scdn.co/image/ab67616d0000b273c0db065619ed208515412917")!),
    song(id: 2, name: "</c0de>", artist: "Motionless in white", capa: URL(string: "https://m.media-amazon.com/images/I/81mkLe9UJ4L._UF894,1000_QL80_.jpg")!),
    song(id: 3, name: "A place for my head", artist: "Linkin Park", capa: URL(string: "https://cdns-images.dzcdn.net/images/cover/033a271b5ec10842c287827c39244fb5/500x500.jpg")!),
    song(id: 4, name: "To the Hellfire", artist: "Lorna Shore", capa: URL(string: "https://cdns-images.dzcdn.net/images/cover/6e98787c0574cce9eb1f896f7f7b7681/500x500.jpg")!),
    song(id: 5, name: "Silvera", artist: "Gojira", capa: URL(string: "https://static.wixstatic.com/media/96b5ff_cf0e87f878e745f1a4dd903359189a44~mv2.jpg/v1/fill/w_980,h_980,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/96b5ff_cf0e87f878e745f1a4dd903359189a44~mv2.jpg")!),
    song(id: 6, name: "Unsainted", artist: "Slipnot", capa: URL(string: "https://cdns-images.dzcdn.net/images/cover/fdc2196c15fbf2ee91881a78af4da153/0x1900-000000-80-0-0.jpg")!),
    song(id: 7, name: "KingSlayer", artist: "Bring me The Horizon, Babymetal", capa: URL(string: "https://cdns-images.dzcdn.net/images/cover/2eeb0c78e835db405d700a46aad90f4c/0x1900-000000-80-0-0.jpg")!),
    song(id: 8, name: "A little Piece of Heaven", artist: "Avenged Sevenfold", capa: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP86109XY2xVpwkPdfmiFAhtYLI2qMTClQ6w&s")!),
    song(id: 9, name: "Cancer", artist: "My Chemical Romance", capa: URL(string: "https://cdns-images.dzcdn.net/images/cover/9aba5b418a311c0bbefb6699ebc58a4b/0x1900-000000-80-0-0.jpg")!),
    song(id: 10, name: "Freak on the Leash", artist: "Korn", capa: URL(string: "https://static.wikia.nocookie.net/korn/images/6/6e/Issuescover.jpg/revision/latest?cb=20100215221542")!)
]


struct ContentView: View {
    
    var gradient = Gradient(colors: [Color("darkBlue"), Color("black")])
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: gradient,
                            startPoint: .top,
                            endPoint: .bottom)
                        
                    )
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center){
                    AsyncImage(url: URL(string: "https://i.pinimg.com/736x/0d/08/05/0d0805c09fc14748eca28089c54192cb.jpg"), scale: 3 )
                    
                    Spacer()
                    
                    Text("EMO vibe <3")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.leading)
                        .padding(.top)
                    
                    HStack{
                        AsyncImage(url: URL(string: "https://i.redd.it/album-covers-in-adventure-time-style-v0-zoysw982tpk91.jpg?width=960&format=pjpg&auto=webp&s=1606a7fb20a62eb6b0b6a8c9a9585d7c07c8855a"), scale: 39  )
                        
                        Text("Nanicka")
                            .foregroundColor(.white)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.leading)
                    .padding(.bottom)
                    
                    
                    Spacer()
                    
                    ScrollView{
                        
                        ForEach(arraySongs) { song in
                            
                            NavigationLink( destination: play(teste: song)){
                                
                                HStack{
                                    AsyncImage(url: song.capa){
                                        image in image.image?.resizable()
                                            .frame(width: 50, height: 50)
                                    }
                                    
                                    VStack(alignment: .leading){
                                        /*@START_MENU_TOKEN@*/Text(song.name)/*@END_MENU_TOKEN@*/
                                            .font(.title3)
                                        Text(song.artist)
                                            .font(.caption2)
                                        
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .padding(.trailing)

                                    
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                .padding(.leading)
                                .padding(.vertical, 3)
                                .foregroundColor(.white)
                                
                            }
                        }
                        
                        
                        Text("Sugeridos")
                            .font(.title2)
                            .foregroundStyle(.white)
                        ScrollView(.horizontal){
                            HStack{
                                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                                    AsyncImage(url: URL(string: "https://i.redd.it/album-covers-in-adventure-time-style-v0-zoysw982tpk91.jpg?width=960&format=pjpg&auto=webp&s=1606a7fb20a62eb6b0b6a8c9a9585d7c07c8855a"), scale: 6 )
                                    Text("Sad Songs")
                                        .font(.caption)
                                        .foregroundStyle(.white)

                                }
                                
                                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                                    AsyncImage(url: URL(string: "https://i.redd.it/album-covers-in-adventure-time-style-v0-zoysw982tpk91.jpg?width=960&format=pjpg&auto=webp&s=1606a7fb20a62eb6b0b6a8c9a9585d7c07c8855a"), scale: 6 )
                                    Text("Sad Songs")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                }
                                
                                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                                    AsyncImage(url: URL(string: "https://i.redd.it/album-covers-in-adventure-time-style-v0-zoysw982tpk91.jpg?width=960&format=pjpg&auto=webp&s=1606a7fb20a62eb6b0b6a8c9a9585d7c07c8855a"), scale: 6 )
                                    Text("Sad Songs")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                }
                                
                            }
                            
                        }
                        
                        
                        
                    }

                    
                    
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
