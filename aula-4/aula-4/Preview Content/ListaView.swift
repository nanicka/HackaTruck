//
//  ListaView.swift
//  aula-4
//
//  Created by Turma01-22 on 23/09/24.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        VStack{
            Text("Lista")
                .font(.title)
                .padding(.top, 15)
            
            List{
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")

                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                }
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .padding(.bottom, 10)
    }
}

#Preview {
    ListaView()
}
