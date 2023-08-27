//
//  MenuView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 24/08/23.
//

import SwiftUI

struct MenuView: View {
    @State var username : String
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    NavigationLink(destination: ProfileView(username: "nombre del usuario", email: "emailUsuario@solana.com", city: "Ciudad del usuario")){
                        Image(systemName: "person.circle.fill")
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                            .font(.system(size:40))
                    }

                    
                    Spacer()
                }
                .padding(.leading,20)
                
                HStack {
                    Text("Hola" )
                        .font(.custom("Roboto",size: 40))
           
                        
                    Text(username)
                        .font(.custom("Roboto",size: 40))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    
                }
                
                .navigationBarBackButtonHidden(true)

                Text("¿Qué necesitas hoy?")

                    .font(.custom("Roboto",size: 30))
                
                List () {
                    HStack {
                        Image("Cabeza solana")
                            .resizable()
                            .frame(width:50, height:50)
                        Text("Hablar conmigo")
                        NavigationLink (destination: SolanaView()) {
                            
                        }
                    }
                    HStack {
                        Image("Liston")
                            .resizable()
                            .frame(width:50, height:50)
                        Text("Saber más del cancer")
                        NavigationLink (destination: CancerView()) {
                            
                        }
                    }
                    HStack {
                        Image(systemName:"brain.head.profile")
                            .resizable()
                            .frame(width:42, height:50)
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        Text("Conocer estrategias de afrontamiento")
                            .padding(.leading,10)
                        NavigationLink (destination: CopingView()) {
                            
                        }
                    }
                    HStack {
                        Image(systemName: "text.below.photo")
                            .resizable()
                            .frame(width:42, height:50)
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        Text("Ver muro")
                            .padding(.leading,10)
                        NavigationLink (destination: WallView()) {
                            
                        }
                    }
                    HStack {
                        Image(systemName: "list.bullet.clipboard")
                            .resizable()
                            .frame(width:42, height:50)
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        Text("Contactar un especialista")
                            .padding(.leading,10)
                        NavigationLink (destination: SpecialistView()) {
                            
                        }
                    }
                } //end list
                
                
                Spacer()
                Image("Solana")
                    .resizable()
                    .frame(width:200, height:200)
                
                
            } //end VStack
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(username: "Fernando")
    }
}
