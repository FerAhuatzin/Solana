//
//  ObjectView.swift
//  Solana
//
//  Created by Manuel Arturo Perez Alpuche on 24/08/23.
//

import SwiftUI

struct ObjectView: View {
    @State var username : String
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    Text("Hola" )
                        .font(.custom("Roboto",size: 40))
                        .navigationBarBackButtonHidden(true)
                        
                        
                    Text(username)
                        .font(.custom("Roboto",size: 40))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    
                }
                .padding(.top, 40)
                Text("Soy Solana")
                    .font(.custom("Roboto",size: 30))
               
                
                Text("Soy una apliación para pacientes con diagnóstico de cáncer \n \nAquí puedes encontrar estrategias de afrontamiento, información sobre el cancer, podrás interactuar con otras personas, contactar a especialistas y si necesitas ayuda siempre podrás chatear conmigo")
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .padding(.trailing,40)
                    .padding(.leading,40)
                    .font(.custom("Roboto", size: 20))
                
                NavigationLink(destination: MenuView(username: username))
                {
                    Text("Conitnuar")
                        .frame(width: 125.0, height: 50.0)
                        .foregroundColor(.black)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.top,40)
                }
                    
                Spacer()
                Image("SolanaSaludo")
                    .resizable()
                    .frame(width:200, height:200)
            }
        }
    }
}

struct ObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectView(username: "Manu")
    }
}
