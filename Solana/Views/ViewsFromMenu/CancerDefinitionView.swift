//
//  CancerDefinitionView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 27/08/23.
//

import SwiftUI

struct CancerDefinitionView: View {
    var cancer: CancerType
    var body: some View {
        VStack {
            Text(cancer.name)
                .font(.custom("Roboto",size: 40))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .padding(.top,50)
                .padding(.bottom,30)
            ScrollView {
                HStack {
                    Text("Definición")
                        .font(.custom("Roboto",size: 25))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        .padding()
                    Spacer()
                }
                Text(cancer.definition)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                
                
                HStack {
                    Text("Causas")
                        .font(.custom("Roboto",size: 25))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        .padding()
                    Spacer()
                }
                Text(cancer.causes)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                
                HStack {
                    
                    Text("Diagnosis")
                        .font(.custom("Roboto",size: 25))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        .padding()
                    Spacer()
                }
                Text(cancer.diagnosis)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                
                HStack {
                    Text("Tratamiento")
                        .font(.custom("Roboto",size: 25))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        .padding()
                    Spacer()
                }
                Text(cancer.treatment)
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

struct CancerDefinitionView_Previews: PreviewProvider {
    static var previews: some View {
        CancerDefinitionView(cancer: CancerType(name: "Cancer de mama", definition: "lorem ipsum", causes: "lorem ipsum", diagnosis: "lorem ipsum", treatment: "lorem ipsum"))
    }
}
