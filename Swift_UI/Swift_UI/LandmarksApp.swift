//
//  LandmarksApp.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
    
}
