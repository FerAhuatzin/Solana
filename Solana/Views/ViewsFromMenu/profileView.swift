//
//  profileView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI



struct profileView: View {
    
    @State var username: String
    @State var email: String
    @State var city: String

    var body: some View {
        VStack {
            Text("Tu perfil")
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .font(.system(size:40))
                .padding(.top,20)
            Circle()
                .scale(1)
                .foregroundColor(.gray)
            Text("Nombre de usuario")
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .font(.custom("Roboto", size: 20))
            TextField("Nombre de usuario", text: $username)
                .frame(width: 300, height: 50.0)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .font(.custom("Roboto", size: 20))
                .cornerRadius(10)
            Text("Correo electrónico")
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .font(.custom("Roboto", size: 20))
            TextField("Correo electronico", text: $email)
                .frame(width: 300, height: 50.0)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .font(.custom("Roboto", size: 20))
                .cornerRadius(10)
            Text("Ciudad")
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .font(.custom("Roboto", size: 20))
            TextField("Ciudad", text: $city)
                .frame(width: 300, height: 50.0)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .font(.custom("Roboto", size: 20))
                .cornerRadius(10)
                .padding(.bottom,20)
                
            
            Button ("Guardar cambios") {
                
            }
            .frame(width: 200, height: 50.0)
            .foregroundColor(.white)
            .background(Color(red: 0.338, green: 0.44, blue: 0.962))
            .background(Color.black.opacity(0.05))
            .font(.custom("Roboto", size: 20))
            .cornerRadius(10)
            .padding(.bottom,200)
            
            
            Spacer()
        }
        
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView(username: "fernando", email: "fernando@gmail.com", city: "Puebla")
    }
}
