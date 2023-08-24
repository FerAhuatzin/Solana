//
//  TerminosCondiciones.swift
//  Solana
//
//  Created by Ricardo Ladislao Martinez Cabrera on 24/08/23.
//

import SwiftUI

struct TerminosCondiciones: View {
    var body: some View {
        NavigationStack{
            
            Text("Términos y condiciones")
                .font(.custom("Roboto",size: 45))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
            
            Spacer()
            
            Button("Regresar"){
                
            }
            .frame(width: 125.0, height: 50.0)
            .foregroundColor(.black)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .padding()
            
            
            Image("Solana")
                .resizable()
                .frame(width:300, height:300)
            
            
        }
    }
}

struct TerminosCondiciones_Previews: PreviewProvider {
    static var previews: some View {
        TerminosCondiciones()
    }
}
