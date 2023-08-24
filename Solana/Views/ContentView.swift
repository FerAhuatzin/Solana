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
                        .padding()
                        .fontWeight(.bold)
                        .font(.custom("RobotoBold", size: 70))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    NavigationLink(destination: InicioSesionView()) {
                        
                        Text("Iniciar sesion")
                            .padding()
                            .font(.custom("Roboto", size: 25))
                            .foregroundColor(.black)
                            .frame(width:200, height:70)
                            .background(.white.opacity(0.8))
                            .cornerRadius(15)
                            .padding()
                        
                    }
                    
                    NavigationLink(destination: RegistroView()) {
                        
                        Text("Registrarse")
                            .padding()
                            .font(.custom("Roboto", size: 25))
                            .foregroundColor(.black)
                            .frame(width:200, height:70)
                            .background(.white.opacity(0.8))
                            .cornerRadius(15)
                            .padding()
                        
                    }
                    
                    Spacer()
                    
                    Image("Solana")
                        .resizable()
                        .frame(width:300, height:300)
                        .padding()
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

