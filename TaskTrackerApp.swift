//
//  TaskTrackerApp.swift
//  TaskTracker
//
//  Created by admin on 5/26/26.
//

import SwiftUI
import SwiftData

@main
struct TaskTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}

