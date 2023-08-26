//
//  InicioSesionView.swift
//  Solana
//
//  Created by Ricardo Ladislao Martinez Cabrera on 23/08/23.
//

import SwiftUI

struct InicioSesionView: View {
    @State var contraseña = ""
    @State var user = ""
    @State var recuperarContraseña = ""
    var body: some View {
        NavigationStack{
            
            VStack {
                
                
                Text("SOLANA")
                    //.padding(.top, 50.0)
                    .fontWeight(.bold)
                    .font(.custom("RobotoBold", size: 70))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                
                Text("Inicio sesion")
                    .padding(.bottom, 40)
                    .font(.custom("Roboto",size: 40))
                    .font(.title)
                    .foregroundColor(Color.black)
                 
                
                TextField("Usuario", text:$user )
                .padding()
                .frame(width: 250, height: 50.0)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .font(.custom("Roboto", size: 20))
                .padding()
                
                SecureField("Contraseña", text: $contraseña)
                .padding()
                .frame(width: 250, height: 50.0)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .font(.custom("Roboto", size: 20))
                .cornerRadius(10)
                
                NavigationLink("Recuperar contraseña")
                {
                    
                }
                .padding()
                .font(.custom("Roboto",size: 15))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))

                
                NavigationLink(destination: MenuView(username: user))
                {
                    Text("Continuar")
                        .frame(width: 125.0, height: 50.0)
                        .foregroundColor(.black)
                        .font(.custom("Roboto", size: 20))
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.top,40)
                        .padding(.bottom,20)
                }
                
                
                Spacer()
                Image("Solana")
                    .resizable()
                    .frame(width:200, height:200)
                
                
                
            }
            
        }
    }
}

struct InicioSesionView_Previews: PreviewProvider {
    static var previews: some View {
        InicioSesionView()
    }
}
