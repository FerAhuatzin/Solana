//
//  SpecialistRow.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 27/08/23.
//

import SwiftUI

struct SpecialistRow: View {
    var specialist: Specialist
    var body: some View {
        HStack {
            Text(specialist.name)
                .font(.custom("Roboto", size: 18))
            Spacer()
            VStack {
                HStack {
                    Spacer()
                    Text(specialist.phoneNumber)
                        .font(.custom("Roboto", size: 12))
                }
                HStack {
                    Spacer()
                    Text(specialist.email)
                        .font(.custom("Roboto", size: 12))
                }
            }
            
        }
        .padding()
    }
}

struct SpecialistRow_Previews: PreviewProvider {
    static var previews: some View {
        SpecialistRow(specialist: Specialist(name: "Fernando Ahuatzin", specialty: "Oncólogo", city: "Puebla", phoneNumber: "9811184027", email: "fernando.ahuatzingo@udlap.mx"))
    }
}
