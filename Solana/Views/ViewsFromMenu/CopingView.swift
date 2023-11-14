//
//  CopingView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct CopingView: View {
    @State private var isExpandedInfo1 = false
    @State private var isExpandedInfo2 = true
    let definitions = CopingDefinitions()
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Acerca de las estrategias de afrontamiento")
                    .font(.custom("Roboto",size: 35))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                
                ScrollView {
                    HStack
                    {
                        Spacer()
                        DisclosureGroup("¿Qué Son?", isExpanded: $isExpandedInfo1)
                        {
                            Text ("Las estrategias de afrontamiento hacen referencia a los esfuerzos, mediante conducta manifiesta o interna, para hacer frente a las demandas internas y ambientales, y los conflictos entre ellas, que exceden los recursos de la persona.")
                                .padding(.trailing, 20)
                                .padding(.leading, 20)
                                .padding(.bottom)
                                .font(.custom("Roboto", size: 20)) // Tamaño personalizado
                                .foregroundColor(.black)

                        }//End DisclosureGroup
                        .font(.custom("Roboto", size: 25)) // Tamaño personalizado
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        Spacer()

                    }//End HStack
                    
                    HStack
                    {
                        Spacer()
                        DisclosureGroup("¿Cuáles son?", isExpanded: $isExpandedInfo2)
                        {
                            List() {
                                CopingStrategy(imageName: "figure.run", copingName: "Actividad física", definition: definitions.physicalActiviy)
                                CopingStrategy(imageName: "person.2.fill", copingName: "Acompañamiento social y familiar", definition: definitions.socialAccompaniment)
                                CopingStrategy(imageName: "figure.socialdance", copingName: "Distracción y el buen humor", definition: definitions.distraction)
                                CopingStrategy(imageName: "figure.mind.and.body", copingName: "Técnicas de relajación física", definition: definitions.relaxation)
                                CopingStrategy(imageName: "lungs.fill", copingName: "Control de respiración", definition: definitions.breathing)
                                CopingStrategy(imageName: "fork.knife", copingName: "Hábitos saludables", definition: definitions.health)
                                CopingStrategy(imageName: "book.closed.fill", copingName: "Acercamiento o encuentro espiritual", definition: definitions.religion)
                            }
                            .frame(height: 580)

                        }//End DisclosureGroup
                        .font(.custom("Roboto", size: 25)) // Tamaño personalizado
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        Spacer()

                    }//End HStack
                }

            }
        }

        
    }
}

struct CopingView_Previews: PreviewProvider {
    static var previews: some View {
        CopingView()
    }
}
