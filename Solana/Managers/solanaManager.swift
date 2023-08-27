//
//  solanaManager.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import Foundation

func getResponse(message:String)->String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("mal")
    {
        return "¿Quieres platicarlo?"
    }
    else {
        if tempMessage.contains("si") {
            return "Cuéntame, ¿Qué pasa?"
        }
        else {
            if (tempMessage.contains("gracias solana")) {
                return "No hay de que, espero que todo salga bien"
            }
            else {
                if (tempMessage.contains("adios")) {
                    return "adios"
                }
                else {
                    return "Es normal sentirse asi, entiendo que lo que estás pasando es algo muy complicado"
                }
            }
        }
    }
}
