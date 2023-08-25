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
            
                
                VStack {
                    

                    Text("SOLANA")
                        .padding(.top, 50.0)
                        .padding(.bottom, 120.0)
                        .fontWeight(.bold)
                        .font(.custom("RobotoBold", size: 70))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    
                    NavigationLink(destination: InicioSesionView()) {
                        
                        Text("Iniciar sesion")
                            .padding()
                            .font(.custom("Roboto", size: 20))
                            .foregroundColor(.black)
                            .frame(width:250, height:60)
                            .background(.black.opacity(0.1))
                            .cornerRadius(7)
                            .padding()
                        
                    }
                    
                    
                    NavigationLink(destination: RegistroView()) {
                        
                        Text("Registrarse")
                            .padding()
                            .font(.custom("Roboto", size: 20))
                            .foregroundColor(.black)
                            .frame(width:250, height:60)
                            .background(.black.opacity(0.1))
                            .cornerRadius(7)
                            .padding(.bottom, 60)
                        
                    }
                    
                    Image("Solana")
                        .resizable()
                        .frame(width:200, height:200)
                    
                    
                                            
                }
                
                
            
            
        }
        
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}

