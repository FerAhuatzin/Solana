//
//  InicioSesionView.swift
//  Solana
//
//  Created by Ricardo Ladislao Martinez Cabrera on 23/08/23.
//

import SwiftUI

struct InicioSesionView: View {
    @State var contraseña = ""
    @State var username = ""
    @State var recuperarContraseña = ""
    var body: some View {
        NavigationStack{
            
            VStack {
                
                Text("SOLANA")
                    .font(.custom("Roboto",size: 70))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .padding(.top, 50)
                    
                
                Text("Inicio sesion")
                    .padding(.bottom, 80)
                    .font(.custom("Roboto",size: 40))
                    .font(.title)
                    .foregroundColor(Color.black)
                 
                
                TextField("Nombre de usuario", text:$username )
                .frame(width: 250, height: 50.0)
                .font(.custom("Roboto",size: 20))
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .cornerRadius(7)
                .padding()
                
            
                SecureField("Contraseña", text: $contraseña)
                .padding()
                .frame(width: 250, height: 50.0)
                .font(.custom("Roboto",size: 20))
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .cornerRadius(7)
                
                NavigationLink("Recuperar contraseña")
                {
                    
                }
                .font(.custom("Roboto",size: 15))
                .padding(.top,30)

                
                NavigationLink(destination: MenuView(username: username)){
                    Text("Continuar")
                        .frame(width: 125.0, height: 50.0)
                        .font(.custom("Roboto",size: 20))
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding()
                    
                }
                
                
                Spacer()
                Image("Solana")
                    .resizable()
                    .frame(width:200, height:200)
                
                
                
            }
   
            /*Text("Bienvenido a")
                .padding(.top, 80.0)
                //.padding(30)
                .font(.title)
                .foregroundColor(Color.black)*/
            
        }
    }
}

struct InicioSesionView_Previews: PreviewProvider {
    static var previews: some View {
        InicioSesionView()
    }
}
