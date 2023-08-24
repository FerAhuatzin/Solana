//
//  Registro.swift
//  Solana
//
//  Created by Ricardo Ladislao Martinez Cabrera on 24/08/23.
//

import SwiftUI

struct Registro: View {
    
    @State var username: String = ""
    @State var address: String = ""
    @State var password: String = ""
    @State var confirmedPassword: String = ""
    @State var name: String = ""
    @State var surname: String = ""
    @State var age: String = ""
    @State var sex: String = ""
    @State var cancerType: String = ""
    @State var city: String = ""
    var buttonHeight = 40.0
    
    var body: some View {
        NavigationStack{
            Text("Registro")
                .font(.custom("Arial Black",size: 50))
                .fontWeight(.black)
                .foregroundColor(Color.black)
            
            
            TextField("Nombre de usuario", text:$username )
            .padding()
            .frame(width: 350, height: buttonHeight)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            TextField("Correo electronico", text:$address )
            .padding()
            .frame(width: 350, height: buttonHeight)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            TextField("Contraseña", text:$password )
            .padding()
            .frame(width: 350, height: buttonHeight)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            TextField("Repetir contraseña", text:$confirmedPassword )
            .padding()
            .frame(width: 350, height: buttonHeight)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            
            Text("Datos personales")
                .font(.custom("Arial Black",size: 30))
                .fontWeight(.black)
                .foregroundColor(Color.black)
            
            HStack{
                TextField("Nombre", text:$name)
                .padding()
                .frame(width: 175, height: buttonHeight)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                
                TextField("Apellido", text:$name)
                .padding()
                .frame(width: 175, height: buttonHeight)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                
                
            }
            
            HStack{
                TextField("Edad", text:$name)
                .padding()
                .frame(width: 175, height: buttonHeight)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                
                TextField("Sexo", text:$sex)
                .padding()
                .frame(width: 175, height: buttonHeight)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                
                
            }
            
            TextField("Tipo de cáncer (opcional)", text:$cancerType )
            .padding()
            .frame(width: 350, height: buttonHeight)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            TextField("Ciudad", text:$city )
            .padding()
            .frame(width: 350, height: buttonHeight)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            
            /*
            List {
                Text("Aceptar terminos y condiciones")
             .padding()
            }
             
            
             
             Button("Continuar"){
                 
             }
             .frame(width: 125.0, height: 50.0)
             .foregroundColor(.black)
             .background(Color.black.opacity(0.05))
             .cornerRadius(10)
             .padding()
             
             
             Text("SOLANA")
                 .font(.custom("Roboto",size: 40))
                 .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
             */
            
        }
    }
}

struct Registro_Previews: PreviewProvider {
    static var previews: some View {
        Registro()
    }
}


