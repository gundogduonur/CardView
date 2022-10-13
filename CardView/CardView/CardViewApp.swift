//
//  CardViewApp.swift
//  CardView
//
//  Created by Onur Gündoğdu on 13.10.2022.
//

import SwiftUI

@main
struct CardViewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
