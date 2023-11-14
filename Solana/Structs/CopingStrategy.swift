//
//  CopingStrategy.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct CopingStrategy: View {
    var imageName: String
    var copingName: String
    var definition: String
    var body: some View {
        HStack {
            NavigationLink (destination: CopingDefinitionView(definition: definition, name: copingName)) {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .font(.system(size:25))
                Spacer()
                Text(copingName)
                    .font(.custom("Roboto", size: 20))
                    .foregroundColor(.black)
            }
        }
    }
}

struct CopingStrategy_Previews: PreviewProvider {
    static var previews: some View {
        CopingStrategy(imageName: "person.fill", copingName: "comunicacion", definition: "definicion")
    }
}
