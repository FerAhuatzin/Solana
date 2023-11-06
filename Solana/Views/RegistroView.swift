//
//  RegistroView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 23/08/23.
//

import SwiftUI

struct RegistroView: View {
    
    //@State var username: String = ""
    @State var eAddress: String = ""
    @State var password: String = ""
    @State var confirmedPassword: String = ""
    @State var name: String = ""
    @State var preferedName: String = ""
    @State var age: String = ""
    @State var sex: String = "..."
    @State var cancerType: String = ""
    @State var city: String = ""
    @State var accept: Bool = false
    @State private var isKeyboardHidden = true
    
    var body: some View {
        NavigationStack{
            
            VStack {
                
                Text("SOLANA")
                    .padding(.top)
                    .fontWeight(.bold)
                    .font(.custom("RobotoBold", size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                Text("Registro")
                    .padding(.bottom, 30)
                    .font(.custom("Roboto",size: 30))
                    .font(.title)
                    .foregroundColor(Color.black)
                
                ScrollView {
                    
                    VStack {
                        TextField("Correo electronico", text: $eAddress)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .padding(8)
                            .frame(width: 300, height: 50.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                        SecureField("Contraseña", text: $password)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(8)
                            .frame(width: 300, height: 50.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                        SecureField("Confirmar Contraseña", text: $confirmedPassword)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(8)
                            .frame(width: 300, height: 50.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                    }
                    .padding(.bottom,20)

                    
                    VStack{
                        
                        TextField("Nombre completo", text: $name)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(8)
                            .frame(width: 300, height: 50.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                        TextField("Nombre de preferencia", text: $preferedName)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .frame(width: 300, height: 50.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                        
                        TextField("Fecha nacimiento: dd/mm/aaaa", text: $age)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(8)
                            .frame(width: 300, height: 50.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                    }
                    
                    HStack {
                        Menu() {
                            Button("Masculino"){
                                    sex  = "Masculino"
                                }
                            Button("Femenino"){
                                    sex  = "Femenino"
                                }
                            Button("Prefiero no contestar"){
                                    sex = "Prefiero no contestar"
                                }
                        }
                        label: {
                            Label("Sexo:", systemImage: "chevron.down")
                                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                .font(.custom("Roboto",size: 20))
                        }
                        Text(sex)
                            .font(.custom("Roboto",size: 20))
                    }
                    .frame(width: 300, height: 50.0)
                    
                    VStack {
                        TextField("Tipo de cancer", text: $cancerType)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(8)
                            .frame(width: 300, height: 50.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                        TextField("Ciudad", text: $city)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(8)
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
                        NavigationLink(destination: ObjectView(username: preferedName))
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
            .gesture(TapGesture().onEnded { _ in
                        self.isKeyboardHidden = true
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    })
            
        }
    }
}

struct Registro_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}
