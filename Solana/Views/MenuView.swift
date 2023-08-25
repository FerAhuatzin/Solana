//
//  MenuView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 24/08/23.
//

import SwiftUI

struct MenuView: View {
    @State var username : String
    var body: some View {
        VStack {
            
            HStack {
                Text("Hola" )
                    .font(.custom("Roboto",size: 40))
                    
                    
                Text(username)
                    .font(.custom("Roboto",size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                
            }
            Text("Soy Solana")
                .font(.custom("Roboto",size: 30))
            Text("¿Qué necesitas hoy?")
                .font(.custom("Roboto",size: 25))
            
            List () {
                HStack {
                    //Icono seccion
                    Text("Hablar conmigo")
                }
                HStack {
                    //Icono seccion
                    Text("Saber más del cancer")
                }
                HStack {
                    //Icono seccion
                    Text("Conocer estrategias de afrontamiento")
                }
                HStack {
                    //Icono seccion
                    Text("Ver muro")
                }
                HStack {
                    //Icono seccion
                    Text("Contactar un especialista")
                }
            } //end list
            .padding(.bottom,80)
            .padding(.top,80)
            
            Spacer()
            Image("Solana")
                .resizable()
                .frame(width:200, height:200)
            
            
        } //end VStack
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(username: "Fernando")
    }
}
