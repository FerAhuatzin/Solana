//
//  ProfileStruct.swift
//  Solana
//
//  Created by Manuel Arturo Perez Alpuche on 04/10/23.
//
import SwiftUI

struct ProfileStruct: View {
    var headerText : String
    @State private var fieldText: String = ""
      var body: some View {
        HStack {
          Text(headerText)
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                .font(.custom("Roboto", size: 20))
          TextField(headerText, text: $fieldText)
                .frame(width: 300, height: 50.0)
                .foregroundColor(.black)
                .background(Color.black.opacity(0.05))
                .font(.custom("Roboto", size: 20))
                .cornerRadius(10)
        }
      }
    
    
    struct ProfileStruct_Previews: PreviewProvider {
        static var previews: some View {
            ProfileStruct(headerText: "")
        }
    }
}
