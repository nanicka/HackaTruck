//
//  AzulView.swift
//  aula-4
//
//  Created by Turma01-22 on 23/09/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {

        VStack{
            Image(systemName: "paintbrush.pointed.fill")
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .font(.system(size: 150))

        }
        .background(Color.blue)
        .edgesIgnoringSafeArea(.top)
        .padding(.bottom, 10)
    }
}

#Preview {
    AzulView()
}
