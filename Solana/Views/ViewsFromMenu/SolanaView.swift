//
//  SolanaView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct SolanaView: View {
    @State var userMessage = ""
    @State var solana: [String] = ["Hola, ¿Cómo te sientes?"]
    var body: some View {
        VStack {
            HStack {
                Image("Cabeza solana")
                    .resizable()
                    .frame(width: 70,height: 70)
                Text("Solana")
                    .fontWeight(.bold)
                    .font(.custom("RobotoBold", size: 50))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
            }
            
            Spacer()
            ScrollView{
                ForEach(solana, id: \.self) {message in
                    if message.contains("User") {
                        let newMessage = message.replacingOccurrences(of: "[User]", with: "")
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                                .cornerRadius(10)
                                .padding(.horizontal,16)
                                .padding(.bottom,10)
                            Image(systemName: "person.fill")
                                .font(.system(size:40))
                                .padding(.trailing,10)
                                
                        }
                    }
                    else {
                        HStack {
                            Image("Cabeza solana")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .padding(.leading,10)
                            Text(message)
                                .padding()
                                .foregroundColor(.black)
                                .background(Color(red: 0.949, green: 0.949, blue: 0.949))
                                .cornerRadius(10)
                                .padding(.horizontal,16)
                                .padding(.bottom,10)
                                
                            Spacer()
                        }
                        
                    }
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
                
            Spacer()
            
            HStack {
                
                TextField("Escribe algo...", text: $userMessage)
                    .padding()
                    .background(.black.opacity(0.05))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(message: userMessage)
                    }

                
                Button{
                    sendMessage(message: userMessage)
                } label: {
                    Image(systemName: "paperplane")
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        .font(.system(size:26))
                        .padding(.horizontal,10)
                }
            }
            .padding()
        }
    }
    
    func sendMessage (message: String) {
        withAnimation {
            solana.append("[User]" + message)
            self.userMessage = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            solana.append(getResponse(message: message))
        }
    }
}

struct SolanaView_Previews: PreviewProvider {
    static var previews: some View {
        SolanaView()
    }
}
