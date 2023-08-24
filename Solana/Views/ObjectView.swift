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
                Text("Hola " + username + " soy Solana")
                    .font(.largeTitle)
                
                Text("Soy una apliación para pacientes con diagnóstico de cáncer \n \nAquí puedes encontrar estrategias de afrontamiento, información sobre el cancer, podrás interactuar con otras personas, contactar a especialistas y si necesitas ayuda siempre podrás chatear conmigo")
                    .multilineTextAlignment(.center)
                    .padding(.top,80)
                    
                Spacer()
                Image("Solana")
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
