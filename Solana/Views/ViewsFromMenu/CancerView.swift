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
    var cancerInfo = Cancerinfo()
    
    
    struct JustifiedText: View {
        var text: String
        var body: some View {
            GeometryReader { geometry in
                Text(self.text)
                    .frame(width: geometry.size.width, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineSpacing(5) // Ajusta el espaciado entre líneas según tu preferencia
            }
        }
    }

    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Acerca del cáncer")
                    .font(.custom("Roboto",size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .padding(.bottom)
                ScrollView{
                    HStack {
                        Text("¿Qué es?")
                            .font(.custom("Roboto",size: 25))
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                            .padding()
                        Spacer()
                    }
                    Text("Tumor maligno en generalque se caracteriza porpérdida en el control decrecimiento, desarrollo ymultiplicación celular concapacidad de producirmetástasis")
                        .padding(.trailing,20)
                        .padding(.leading,20)
                        .padding(.bottom)
                    HStack {
                        Text("Datos")
                            .font(.custom("Roboto",size: 25))
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                            .padding()
                        Spacer()
                    }
                    Text("El cáncer es la segunda causa principal de muerte a nivel mundial, representa unestimado de 9,6 millones de muertes, o una de cada seis muertes, en 2018. El cáncer de pulmón, próstata, colorrectal, estómago e hígado son los tipos másfrecuentes en los hombres, mientras que el cáncer de mama, los cáncerescolorrectales, de pulmón, de cuello uterino y de tiroides son los más comunes entrelas mujeres (WHO, 2021). \n \nEn América Latina el cáncer es una de las principales causas de mortalidad. Enel año 2008, causo 1,2 millones de muertes, un 45% de las cuales ocurrieron enAmérica Latina y el Caribe. Según datos de la Organización Panamericana de Salud(OPS) se pronostica que la mortalidad por cáncer en las Américas aumente hasta2,1 millones en el 2030. (OPS, 2020)")
                        .padding(.trailing,20)
                    
                        .padding(.leading,20)
                        .padding(.bottom)
                    HStack {
                        Text("Síntomas")
                            .font(.custom("Roboto",size: 25))
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                            .padding()
                        Spacer()
                    }
                    Text("Cambios en los senos, Sentir un bulto o algo sólido en el seno o bajo el brazo, Cambios o descargas en lospezones, Piel roja, escamosa, sumida,o con hoyos y que dacomezónCambios en la vejiga, Dificultad para orinar, Dolor al orinar Sangre en la orina Hemorragia o moretones sinbuna razón aparente, Cambios en el intestino, Sangre en el excremento, Cambios en los hábitos delintestino, Tos o ronquera que no desaparece, Problemas al comer Dolor después de comer(acidez o indigestión que nodesaparecen)Problemas al deglutir, Dolor de estómago, Náuseas y vómitos, Cambios de apetito, Cansancio grave y que dura, tiempoFiebre o sudores nocturnos, sin ninguna razón, Cambios en la boca, Un parche blanco o rojo en la lengua o en la boca, Hemorragia, dolor o entumecimiento en los labioso en la boca, Problemas neurológicos, Dolores de cabeza, Convulsiones, Cambios en la vista, Cambios en la audición, Parálisis facial, Cambios de la piel, Un bulto de color carne que, sangra o que se vuelve, escamoso, Un nuevo lunar o un cambio, en un lunar ya existente, Una irritación que no sana, Ictericia (volverse amarillosla piel o el blanco de losojos), Hinchazón o bultos en cualquier parte como en el cuello, en las axilas, elestómago y las ingles, Subir o bajar de peso sinuna razón conocida")
                        .padding(.trailing,20)
                        .padding(.leading,20)
                        .padding(.bottom)
             
                }
                
                Text("Tipos")
                    .font(.custom("Roboto",size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .padding(.bottom)
                List{
                    ForEach(typesArray, id: \.self) { typeArray in
                        TypesStruct(type: typeArray.type, image: typeArray.image, cancer: cancerInfo.mamaCancer)
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
