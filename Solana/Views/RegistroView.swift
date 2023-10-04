//
//  RegistroView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 23/08/23.
//

import SwiftUI

struct RegistroView: View {
    
    @State var username: String = ""
    @State var eAddress: String = ""
    @State var password: String = ""
    @State var confirmedPassword: String = ""
    @State var name: String = ""
    @State var surname: String = ""
    @State var age: String = ""
    @State var sex: String = ""
    @State var cancerType: String = ""
    @State var city: String = ""
    @State var accept: Bool = false
    
    var body: some View {
        NavigationStack{
            
            VStack {
                
                Text("SOLANA")
                    .padding(.top, 50)
                    .fontWeight(.bold)
                    .font(.custom("RobotoBold", size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                
                Text("Registro")
                    .padding(.bottom, 50)
                    .font(.custom("Roboto",size: 30))
                    .font(.title)
                    .foregroundColor(Color.black)
                 
                
                
                TextField("Nombre de usuario", text: $username)
                    .frame(width: 300, height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.black.opacity(0.05))
                    .font(.custom("Roboto", size: 20))
                    .cornerRadius(10)
                TextField("Correo electronico", text: $eAddress)
                    .frame(width: 300, height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.black.opacity(0.05))
                    .font(.custom("Roboto", size: 20))
                    .cornerRadius(10)
                SecureField("Contraseña", text: $password)
                    .frame(width: 300, height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.black.opacity(0.05))
                    .font(.custom("Roboto", size: 20))
                    .cornerRadius(10)

                
                HStack{
                    
                    TextField("Nombre", text: $name)
                        .frame(width: 150, height: 50.0)
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .font(.custom("Roboto", size: 20))
                        .cornerRadius(10)
                    TextField("Apellido", text: $surname)
                        .frame(width: 150, height: 50.0)
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .font(.custom("Roboto", size: 20))
                        .cornerRadius(10)
                    
                }
                .padding(.top,40)
                
                HStack{
                    
                    TextField("Edad", text: $age)
                        .frame(width: 150, height: 50.0)
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .font(.custom("Roboto", size: 20))
                        .cornerRadius(10)
                    TextField("Sexo", text: $sex)
                        .frame(width: 150, height: 50.0)
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .font(.custom("Roboto", size: 20))
                        .cornerRadius(10)
                    
                }
                VStack {
                    TextField("Tipo de cancer", text: $cancerType)
                        .frame(width: 300, height: 50.0)
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .font(.custom("Roboto", size: 20))
                        .cornerRadius(10)
                    TextField("Ciudad", text: $city)
                        .frame(width: 300, height: 50.0)
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .font(.custom("Roboto", size: 20))
                        .cornerRadius(10)
                }
                
                
                HStack {
                    
                    Toggle(isOn: $accept) {
                        
                        HStack {
                            Text ("Aceptar" )
                            NavigationLink(destination: TermsView())
                            {
                                Text("terminos y condiciones")

                            }
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        }
                        
                        
                        
                                    
                    }
                    .padding(.horizontal, 45)
                    .font(.custom("Roboto",size: 15))
                    
                        

                }
                
                if accept {
                    NavigationLink(destination: ObjectView(username: name))
                    {
                        Text("Continuar")
                            .frame(width: 125.0, height: 50.0)
                            .foregroundColor(.black)
                            .font(.custom("Roboto", size: 20))
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .padding(.top,20)
                            .padding()
                    }
                }
                
            }
            
            
        }
    }
}

struct Registro_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}
