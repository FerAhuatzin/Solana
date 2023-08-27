//
//  WallView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct WallView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("El muro")
                        .font(.custom("Roboto",size: 35))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    Spacer()
                    NavigationLink (destination: SpecialistView()) {
                        Image(systemName: "plus")
                        Text("Nueva publicación")
                    }
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                }
                .padding()
                
                Spacer()
                
                ScrollView() {
                    Post(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post1"), caption: "Trabajando en Solana")
                    Post(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post2"), caption: "Trabajando en Solana X2")
                    Post(profilePicture: Image(systemName: "person.fill"), username: "Fer20", post: Image("Post3"), caption: "Trabajando en Solana X3")
                }
            }
        }
        
    }
}

struct WallView_Previews: PreviewProvider {
    static var previews: some View {
        WallView()
    }
}
