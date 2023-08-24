//
//  ContentView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 23/08/23.
//

import SwiftUI
import CoreData

struct InitialView: View {
   
    var body: some View {
        
        
        NavigationStack {
            
            ZStack {
                Color(hue: 0.639, saturation: 0.664, brightness: 0.8)
                    .ignoresSafeArea()
                
                VStack {
                    

                    Text("SOLANA")
                        .padding(.top, 50.0)
                        .padding(.bottom, 200.0)
                        .fontWeight(.bold)
                        .font(.custom("RobotoBold", size: 70))
                        .foregroundColor(.white)
                    
                    Image("Solana")
                        .resizable()
                        .frame(width:200, height:200)
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: InicioSesionView()) {
                        
                        Text("Iniciar sesion")
                            .padding()
                            .font(.custom("Roboto", size: 20))
                            .foregroundColor(.black)
                            .frame(width:150, height:70)
                            .background(.white.opacity(0.8))
                            .cornerRadius(15)
                            //.padding()
                        
                    }
                    
                    
                    NavigationLink(destination: RegistroView()) {
                        
                        Text("Registrarse")
                            .padding()
                            .font(.custom("Roboto", size: 20))
                            .foregroundColor(.black)
                            .frame(width:150, height:70)
                            .background(.white.opacity(0.8))
                            .cornerRadius(15)
                            .padding()
                        
                    }
                    
                    Spacer()
                    
                                            
                }
                
                
            }
            
        }
        
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}

