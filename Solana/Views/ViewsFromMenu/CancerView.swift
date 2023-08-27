//
//  CancerView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct CancerView: View {
    var typesArray: [TypesArray] = [TypesArray(type:"Cáncer de mama", image: "LMama"),
                                    TypesArray(type: "Cáncer de ovario",image: "LOvario"),
                                    TypesArray(type: "Cáncer de pulmón", image: "LPulmon"),
                                    TypesArray(type: "Cáncer de páncreas y leiomiosarcoma", image: "LPancreas"),
                                    TypesArray(type: "Leucemia", image: "LLeucemia"),
                                    TypesArray(type: "Cáncer de hígado", image: "LHigado"),
                                    TypesArray(type: "Cáncer de esófago y estómago", image: "LEsofago"),
                                    TypesArray(type: "Melanoma", image: "LMelanoma"),
                                    TypesArray(type: "Cáncer de colon", image: "LColon"),
                                    TypesArray(type: "Mieloma múltiple", image: "LMieloma"),
                                    TypesArray(type: "Cáncer de cerebro", image: "LCerebro"),
                                    TypesArray(type: "Cáncer de próstata", image: "LProstata"),
                                    TypesArray(type: "Cáncer de cuello uterino", image: "LCuello"),
                                    TypesArray(type: "Sarcoma, cáncer de hueso y cáncer de vejiga", image: "LSarcoma"),
                                    TypesArray(type: "Cáncer de la niñez", image: "LNiñez"),
                                    TypesArray(type: "Cáncer de cabeza y cuello", image: "LCabeza"),
                                    TypesArray(type: "Linfoma", image: "LLinfoma"),
                                    TypesArray(type: "Cáncer de útero", image: "LUtero"),
                                    TypesArray(type: "Cáncer de riñón", image: "LRiñon"),
                                    TypesArray(type: "Cáncer de tiroides", image: "LTiroides")
                                    ]
    var body: some View {
        NavigationStack{
            VStack{
                Text("Acerca del cáncer")
                    .font(.custom("Roboto",size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .padding(.bottom)
                ScrollView{
                    Text("El cáncer es la segunda causa principal de muerte a nivel mundial, representa unestimado de 9,6 millones de muertes, o una de cada seis muertes, en 2018. El cáncer de pulmón, próstata, colorrectal, estómago e hígado son los tipos másfrecuentes en los hombres, mientras que el cáncer de mama, los cáncerescolorrectales, de pulmón, de cuello uterino y de tiroides son los más comunes entrelas mujeres (WHO, 2021). \n \nEn América Latina el cáncer es una de las principales causas de mortalidad. Enel año 2008, causo 1,2 millones de muertes, un 45% de las cuales ocurrieron enAmérica Latina y el Caribe. Según datos de la Organización Panamericana de Salud(OPS) se pronostica que la mortalidad por cáncer en las Américas aumente hasta2,1 millones en el 2030. (OPS, 2020)")
                        .padding(.trailing,20)
                        .padding(.leading,20)
                        .padding(.bottom)
             
                }
                
                List{
                    ForEach(typesArray, id: \.self) { typeArray in
                            TypesStruct(type: typeArray.type, image: typeArray.image)
                    }
                        
                        
                    }
                   
                    
                
                    
            }
        }
    }
}

struct CancerView_Previews: PreviewProvider {
    static var previews: some View {
        CancerView()
     
    }
}
