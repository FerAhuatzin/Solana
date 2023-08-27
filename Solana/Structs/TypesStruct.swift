//
//  TypesStruct.swift
//  Solana
//
//  Created by Manuel Arturo Perez Alpuche on 26/08/23.
//

import SwiftUI

struct TypesStruct: View {
    var type : String
    var image : String
    
    var body: some View {
        HStack {
            
            NavigationLink (destination: CancerView()) {
                Image(image)
                    .resizable()
                    .frame(width:50, height:50)
                Text(type)
            }
        }
    }
    
    struct TypesStruct_Previews: PreviewProvider {
        static var previews: some View {
            TypesStruct(type: "", image: "")
        }
    }
}

