//
//  CopingDefinitionView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct CopingDefinitionView: View {
    var definition: String
    var name: String
    var body: some View {
        VStack {
            Text(name)
                .font(.custom("Roboto",size: 40))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .padding(.top,50)
                .padding(.bottom,30)
            ScrollView {
                Text(definition)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
            }
           
            Spacer()
            Image("Solana")
                .resizable()
                .frame(width:200, height:200)
           
        }
    }
}

struct CopingDefinitionView_Previews: PreviewProvider {
    static var previews: some View {
        
        CopingDefinitionView(definition: "lorem ipsum", name: "Actividad fisica")
    }
}
