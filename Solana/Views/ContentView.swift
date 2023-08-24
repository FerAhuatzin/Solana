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
                Color(red: 0.338, green: 0.44, blue: 0.962)
                    .ignoresSafeArea()
                
                VStack {
                    Text("SOLANA")
                        .font(.largeTitle)
                        .padding()
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                    
                    Spacer()
                    
                    
                    Button("Iniciar sesion") {
                        
                    }//end button
                    .padding()
                    .foregroundColor(.black)
                    .frame(width:150, height:50)
                    .background(.white)
                    .cornerRadius(15)
                    .padding()
                    
                    
                    Button("Registrarse") {
                        
                    } //end button
                    .padding()
                    .foregroundColor(.black)
                    .frame(width:150, height:50)
                    .background(.white)
                    .cornerRadius(15)
                    .padding()
                    
                    Spacer()
                    
                    Image("Solana")
                        .resizable()
                        .frame(width:300, height:300)
                                        //Imagen
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

