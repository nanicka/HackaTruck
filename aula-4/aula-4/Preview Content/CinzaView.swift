//
//  CinzaView.swift
//  aula-4
//
//  Created by Turma01-22 on 23/09/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        VStack{
            Image(systemName: "paintpalette.fill")
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .font(.system(size: 150))

        }
        .background(Color.gray)
        .edgesIgnoringSafeArea(.top)
        .padding(.bottom, 10)
    }
}

#Preview {
    CinzaView()
}
