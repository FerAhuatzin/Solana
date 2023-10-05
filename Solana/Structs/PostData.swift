//
//  PostData.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 04/10/23.
//

import Foundation
import SwiftUI

struct PostData: Identifiable, Hashable {
    var id = UUID()
    var profilePicture: Image
    var username: String
    var post: Image
    var caption: String
    var numberLikes: Int
    
    static func == (lhs: PostData, rhs: PostData) -> Bool {
           return lhs.id == rhs.id // Comparación basada en el id único
    }

    func hash(into hasher: inout Hasher) {
           hasher.combine(id) // Uso del id para calcular el valor hash
    }
}
