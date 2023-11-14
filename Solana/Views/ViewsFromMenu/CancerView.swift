//
//  CancerView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct CancerView: View
{
    
    
    
    @State private var isExpandedInfo1 = false
    @State private var isExpandedInfo2 = false
    @State private var isExpandedInfo3 = false
    
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
    @State private var searchTerm = ""

   
    
    
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                
                Text("Acerca del cáncer")
                    .font(.custom("Roboto",size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .padding(.bottom)
                
                
                
                
                ScrollView{
                    
                    
                    VStack(spacing:80){
                        
                        
                        
                        HStack
                        {
                            Spacer()
                            DisclosureGroup("¿Qué es?", isExpanded: $isExpandedInfo1)
                            {
                                    Text("Tumor maligno en general que se caracteriza por pérdida en el control de crecimiento, desarrollo y multiplicación celular con capacidad de producir metástasis")
                                    .padding(.trailing, 20)
                                    .padding(.leading, 20)
                                    .padding(.bottom)
                                    .font(.custom("Roboto", size: 20)) // Tamaño personalizado
                            }//End DisclosureGroup
                            .font(.custom("Roboto", size: 25)) // Tamaño personalizado
                            Spacer()

                        }//End HStack
                    
                
                        
                        HStack{
                            
                            Spacer()
                            DisclosureGroup("Datos", isExpanded: $isExpandedInfo2)
                            {
                                Text("El cáncer es la segunda causa principal de muerte a nivel mundial, representa un estimado de 9,6 millones de muertes, o una de cada seis muertes, en 2018. El cáncer de pulmón, próstata, colorrectal, estómago e hígado son los tipos más frecuentes en los hombres, mientras que el cáncer de mama, los cánceres colorrectales, de pulmón, de cuello uterino y de tiroides son los más comunes entre las mujeres (WHO, 2021). \n \nEn América Latina el cáncer es una de las principales causas de mortalidad. En el año 2008, causó 1,2 millones de muertes, un 45% de las cuales ocurrieron en América Latina y el Caribe. Según datos de la Organización Panamericana de Salud (OPS) se pronostica que la mortalidad por cáncer en las Américas aumente hasta 2,1 millones en el 2030. (OPS, 2020)")
                                    .padding(.trailing, 20)
                                    .padding(.leading, 20)
                                    .padding(.bottom)
                                    .font(.custom("Roboto", size: 20)) // Tamaño personalizado
                            }//EndDisclosureGroup
                            
                            .font(.custom("Roboto", size: 25)) // Tamaño personalizado
                            Spacer()
                            
                        }//EndHStack
                                       
                        
                        HStack{
                            
                            Spacer()
                            
                            DisclosureGroup("Síntomas", isExpanded: $isExpandedInfo3)
                            {
                                Text("Cambios en los senos, Sentir un bulto o algo sólido en el seno o bajo el brazo, Cambios o descargas en los pezones, Piel roja, escamosa, sumida, o con hoyos y que da comezón Cambios en la vejiga, Dificultad para orinar, Dolor al orinar Sangre en la orina Hemorragia o moretones sin una razón aparente, Cambios en el intestino, Sangre en el excremento, Cambios en los hábitos del intestino, Tos o ronquera que no desaparece, Problemas al comer Dolor después de comer (acidez o indigestión que no desaparecen) Problemas al deglutir, Dolor de estómago, Náuseas y vómitos, Cambios de apetito, Cansancio grave y que dura, tiempo Fiebre o sudores nocturnos, sin ninguna razón, Cambios en la boca, Un parche blanco o rojo en la lengua o en la boca, Hemorragia, dolor o entumecimiento en los labios o en la boca, Problemas neurológicos, Dolores de cabeza, Convulsiones, Cambios en la vista, Cambios en la audición, Parálisis facial, Cambios de la piel, Un bulto de color carne que, sangra o que se vuelve, escamoso, Un nuevo lunar o un cambio, en un lunar ya existente, Una irritación que no sana, Ictericia (volverse amarillos la piel o el blanco de los ojos), Hinchazón o bultos en cualquier parte como en el cuello, en las axilas, el estómago y las ingles, Subir o bajar de peso sin una razón conocida")
                                    .padding(.trailing, 20)
                                    .padding(.leading, 20)
                                    .padding(.bottom)
                                    .font(.custom("Roboto", size: 20)) // Tamaño personalizado
                            }//EndDisclosureGroup
                            .font(.custom("Roboto", size: 25)) // Tamaño personalizado
                            
                            Spacer()
                            
                        }//EndHStack
                      
                        
                    }//EndVStack
      
                }//EndScrollView
                
                TextField("Busque por tipo de cáncer", text: $searchTerm)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                List {
                    ForEach(typesArray.filter
                            {
                            searchTerm.isEmpty || $0.type.localizedCaseInsensitiveContains(searchTerm)
                            }//EndForEach
                            , id: \.self) { typeArray in
                        TypesStruct(type: typeArray.type, image: typeArray.image, cancer: cancerInfo.mamaCancer)
                        }//typeArray
                
                }//EndList
                    
            }//EndVStack
            
        }//EndNavigationStack
        
    }//EndBodyView
    
}//EndCancerView

struct CancerView_Previews: PreviewProvider
{
    static var previews: some View
    {
        CancerView()
     
    }//EndPreviewsView
    
}//EndPreviewProvider

