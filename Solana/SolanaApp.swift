//
//  SolanaApp.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 23/08/23.
//

import SwiftUI

@main
struct SolanaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            InitialView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
