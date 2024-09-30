//
//  ContentView.swift
//  Aula 8
//
//  Created by Turma01-22 on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var ViewModel = viewMode()
    
    var gradient = Gradient(colors: [Color("pastelPink"), Color("pastelOrange")])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: gradient,
                        startPoint: .top,
                        endPoint: .bottom)
                    )
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack{
                
                ZStack{
                    
                    //                    Rectangle()
                    //                        .fill(Color.pastelBlue)
                    //                        .frame(width:  360, height: 150)
                    //                        .cornerRadius(40)
                    //                        .opacity(0.3)
                    
                    HStack{
                        Image("cat1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180)
                            .padding(.leading, 28 )
                        
//                        AsyncImage(url: URL(string: "https://static.vecteezy.com/system/resources/previews/013/078/569/non_2x/illustration-of-cute-colored-cat-cartoon-cat-image-in-format-suitable-for-children-s-book-design-elements-introduction-of-cats-to-children-books-or-posters-about-animal-free-png.png"), scale: 8)
                        Spacer()
                        
                        Text("CATS FACTS . ݁₊ ⊹ . ݁˖ ")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 80)
                        //
                        Spacer()
                        
                    }
                    
                }
                
                Text("⊹ ︶︶︶  ୨୧  ︶︶︶ ⊹")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.white)
                
                
                Spacer()
                
                
                ZStack{
                    
                    
                    Rectangle()
                        .fill(Color.test)
                        .opacity(0.4)
                        .cornerRadius(50)
                        .overlay(
                            
                            ScrollView{
                                Text(ViewModel.catFact)
                                    .font(.title)
                                    .foregroundStyle(.white)
                                    .padding(40)
                                    .multilineTextAlignment(.leading)
                            }
                        )
                    
                        .frame(minWidth: 0, maxWidth: 340, maxHeight:300)
                    
                    
                    
                }
                Spacer()
                            

                
                Button(action: {
                    ViewModel.fetch()
                }) {
                    HStack{
                        Image("cat2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 80)
                        Text("Novo Fato!")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                            .padding()
                            .foregroundColor(.white)
                            .padding(.trailing, 66)
                    }
                    .background(Color.test2)
                    .cornerRadius(20)
                }
                
            
                
 
                  
            }
            .onAppear(){
                ViewModel.fetch()
            }
            
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
