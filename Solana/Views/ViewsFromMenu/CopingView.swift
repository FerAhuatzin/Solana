//
//  CopingView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct CopingView: View {
    
    let definitions = CopingDefinitions()
    var body: some View {
        VStack {
            Text("¿Qué son las estrategias de afrontamiento?")
                .font(.custom("Roboto",size: 35))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .multilineTextAlignment(.center)
                .padding(.horizontal,10)
            
            ScrollView {
                Text ("Las estrategias de afrontamiento hacen referencia a los esfuerzos, mediante conducta manifiesta o interna, para hacer frente a las demandas internas y ambientales, y los conflictos entre ellas, que exceden los recursos de la persona.")
                    .multilineTextAlignment(.center)
                
            }
            .padding(.horizontal,20)
            .frame(width:.infinity, height:130)
            
            Text("¿Cuáles son?")
                .font(.custom("Roboto",size: 35))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .multilineTextAlignment(.center)
            List() {
                CopingStrategy(imageName: "figure.run", copingName: "Actividad física", definition: definitions.physicalActiviy)
                CopingStrategy(imageName: "person.2.fill", copingName: "Acompañamiento social y familiar", definition: definitions.socialAccompaniment)
                CopingStrategy(imageName: "figure.socialdance", copingName: "Distracción y el buen humor", definition: definitions.distraction)
                CopingStrategy(imageName: "figure.mind.and.body", copingName: "Técnicas de relajación física", definition: definitions.relaxation)
                CopingStrategy(imageName: "lungs.fill", copingName: "Control de respiración", definition: definitions.breathing)
                CopingStrategy(imageName: "fork.knife", copingName: "Hábitos saludables", definition: definitions.health)
                CopingStrategy(imageName: "book.closed.fill", copingName: "Acercamiento o encuentro espiritual: ", definition: definitions.religion)
            }
            
            Spacer()
            Image("Solana")
                .resizable()
                .frame(width:200, height:200)
           
            
        }
        
    }
}

struct CopingView_Previews: PreviewProvider {
    static var previews: some View {
        CopingView()
    }
}
