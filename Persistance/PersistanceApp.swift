//
//  PersistanceApp.swift
//  Persistance
//
//  Created by Quincy Alex on 8/27/24.
//

import SwiftUI
import SwiftData

@main
struct PersistanceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            taskListView()
                .modelContainer(for: TaskList.self)
                
                
        }
    }
}
