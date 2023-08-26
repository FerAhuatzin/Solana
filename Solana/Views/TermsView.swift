//
//  TermsView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct TermsView: View {
    var body: some View {
          NavigationStack{
              
              Text("Términos y condiciones")
                  .font(.custom("Roboto",size: 45))
                  .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                  //.padding(.top, 50.0)
                  

              
              Spacer()
              
              ScrollView {
                  Text("Agradecemos tu preferencia al descargar solana (tu acompañante emocional. Es importante mencionar que su información está respaldada con base a los términos de la Ley Federal de protección de datos personales. Cabe mencionar que, si usted acepta dicha solicitud, sus datos e información personal serán resguardados confidencialmente, por loque no se realizará un mal uso de los mismos, se utilizarán con fines académicos,cumpliendo con las consideraciones bioéticas y el apego de lineamientos y consideracionesde la Ley General de Salud en Materia de Investigación para la Salud sin más por elmomento, agradecemos su atención ante dicha solicitud.")
                      .multilineTextAlignment(.center)
                      .padding(.horizontal, 50)

                  
              }
              
              Spacer()

              
              
              Image("Solana")
                  .resizable()
                  .frame(width:200, height:200)
              
              
          }
      }
}

struct TermsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsView()
    }
}
