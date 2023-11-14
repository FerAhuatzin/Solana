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
    //@State var cancerType: String = ""
    @State var city: String = ""
    @State var accept: Bool = false
    @State private var isKeyboardHidden = true
    
    
    @State private var selectedDate = Date()
    
    @State var selectedsex = -1
    let sex = ["Masculino", "Femenino", "Prefiero no contestar"]
    
    @State var selectedCancerType = -1
    @State var showBorders: [Bool] = [false,false,false,false,false,false,false,false, false, false]
    let cancertype = ["Cáncer de mama","Cáncer de ovario","Cáncer de pulmón", "Cáncer de páncreas y leiomiosarcoma", "Leucemia", "Cáncer de hígado","Cáncer de esófago y estómago", "Melanoma", "Cáncer de colon", "Mieloma múltiple", "Cáncer de cerebro", "Cáncer de próstata", "Cáncer de cuello uterino",  "Sarcoma, cáncer de hueso y cáncer de vejiga", "Cáncer de la niñez","Cáncer de cabeza y cuello","Linfoma", "Cáncer de útero", "Cáncer de riñón","Cáncer de tiroides"]
    
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
                  
                        
                        
                        HStack{
                            Spacer()
                            DatePicker(
                                "Fecha de nacimiento:",
                                selection: $selectedDate,
                                displayedComponents: [.date]
                            )
                            .padding(.top)
                            .padding(.horizontal,35)
                            
                            Spacer()
                        }.padding(.top,15)
                    }
                    
                    HStack {
                        Picker(selection: $selectedsex, label: Text("Picker")
                                    .foregroundColor(.black)) {
                                        Text("Sexo")
                                        ForEach(0..<sex.count) { index in
                                            Text(sex[index]).tag(index)
                                        }
                                    }
                                    .padding(.top)
                                    .border(showBorders[9] ? Color.red : Color.clear)
                    }
                    .padding(.top,50)
                    .frame(width: 300, height: 10.0)
                    
                    
                    
                    VStack {
                        
                        Picker(selection: $selectedCancerType, label: Text("Picker")
                                    .foregroundColor(.black)) {
                                        Text("Seleccionar tipo de cancer")
                                        ForEach(0..<cancertype.count) { index in
                                            Text(cancertype[index]).tag(index)
                                        }
                                    }
                                    .padding(.top)
                                    .border(showBorders[9] ? Color.red : Color.clear)
                        
                    }
                    .padding(.top,40)
                    .padding(.bottom,40)
                    
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
                    .padding(.bottom)
                    
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
