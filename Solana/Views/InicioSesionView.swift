//
//  InicioSesionView.swift
//  Solana
//
//  Created by Ricardo Ladislao Martinez Cabrera on 23/08/23.
//

import SwiftUI

struct InicioSesionView: View {
    var body: some View {
        NavigationStack{
            Text("SOLANA")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .padding()
            
            Text("Inicio de sesión")
                .padding(50)
                .font(.title)
                .foregroundColor(Color.black)
            
            Button("Correo electrónico"){
                
            }
            .padding()
            .frame(width: 250.0, height: 50.0)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            Button("Contraseña"){
                
            }
            .padding()
            .frame(width: 250.0, height: 50.0)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            Button("Continuar"){
                
            }
            .frame(width: 125.0, height: 50.0)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .padding()
            
            Spacer()
            Image("Solana")
                .resizable()
                .frame(width:300, height:300)
        }
    }
}

struct InicioSesionView_Previews: PreviewProvider {
    static var previews: some View {
        InicioSesionView()
    }
}
