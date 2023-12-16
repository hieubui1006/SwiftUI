//
//  Swift_UIApp.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import SwiftUI

struct Swift_UIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
