//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Олег Алексеев on 21.07.2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
