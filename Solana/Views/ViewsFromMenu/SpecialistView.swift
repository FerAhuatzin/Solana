//
//  SpecialistView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct SpecialistView: View {
    
    @State var specialty = "Oncología"
    @State var specialists: [Specialist] = [
        Specialist(name: "Fernando Ahuatzin", specialty: "Oncología", city: "Campeche", phoneNumber: "9811184027", email: "fernando.ahuatzingo@udlap.mx"),
        Specialist(name: "Fernando Gallardo", specialty: "Oncología", city: "Campeche", phoneNumber: "9811184027", email: "fernando.ahuatzingo@udlap.mx"),
        
        Specialist(name: "Jesús Armendáriz", specialty: "Psicología", city: "Chihuahua", phoneNumber: "6143643721", email: "jesus.armendarizza@udlap.mx"),
        Specialist(name: "Fernando Zárate", specialty: "Psicología", city: "Chihuahua", phoneNumber: "6143643721", email: "jesus.armendarizza@udlap.mx"),
        
        Specialist(name: "Ladislao Martinez", specialty: "Enfermería oncólogica", city: "Cuernavaca", phoneNumber: "7772337446", email: "ricardo.martinezca@udlap.mx"),
        Specialist(name: "Ricardo Cabrera", specialty: "Enfermería oncólogica", city: "Cuernavaca", phoneNumber: "7772337446", email: "ricardo.martinezca@udlap.mx"),
        
        Specialist(name: "Manuel Pérez", specialty: "Tanatología", city: "Tabasco", phoneNumber: "9932028953", email: "manuel.perezae@udlap.mx"),
        Specialist(name: "Arturo Alpuche", specialty: "Tanatología", city: "Tabasco", phoneNumber: "9932028953", email: "manuel.perezae@udlap.mx"),
    ]

    var body: some View {
        
        NavigationStack {
            VStack {
                
                HStack {
                    Menu() {
                        Button("Oncólogos"){
                                specialty  = "Oncología"
                            }
                        Button("Psicología"){
                                specialty  = "Psicología"
                            }
                        Button("Enfermería oncológica"){
                                specialty = "Enfermería oncólogica"
                            }
                        Button("Tanatología"){
                                specialty = "Tanatología"
                            }
                    }
                    label: {
                        Label("Tipo", systemImage: "chevron.down")
                    }
                    Spacer()
                    VStack {
                        Text("Especialista en:")
                            .font(.custom("Roboto",size: 30))
                            .foregroundColor(.black)
                            
                        Text(specialty)
                            .font(.custom("Roboto",size: 30))
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                            
                    }
                    .padding(.trailing)
                }
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .padding()
                
                List() {
                    ForEach(specialists, id:\.self) {specialist in
                        if specialist.specialty.contains(specialty) {
                            SpecialistRow(specialist: specialist)
                        }
                            
                    } //end Foreach
                }
                
                Spacer()
                Image("Solana")
                    .resizable()
                    .frame(width:200, height:200)
            
           
            }
        }
        
       
    }
}

struct SpecialistView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialistView()
    }
}
