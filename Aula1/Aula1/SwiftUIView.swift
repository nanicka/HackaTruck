//
//  SwiftUIView.swift
//  Aula1
//
//  Created by Turma01-22 on 18/09/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack{
            Image("hackatruck")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(80)
                .clipped()
                .padding(.leading, 35)
            Spacer()
            
            VStack{
                Text(" HackaTruck")
                    .foregroundStyle(.red)
                Text(" 77 Universidades")
                    .foregroundStyle(.blue)
                Text(" 5 regiões do Brasil")
                    .foregroundStyle(.yellow)
                
            }
            .padding(.trailing , 30)
        }
    }
}

#Preview {
    SwiftUIView()
}
