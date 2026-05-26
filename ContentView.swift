//
//  ContentView.swift
//  TaskTracker
//
//  Created by admin on 5/26/26.
//

import SwiftUI

struct ContentView: View {
    @State private var taskCount: Int = 0
    @State private var tasks: [Task] = [
        Task(title: "Learn Swift"),
        Task(title: "Build an App"),
        Task(title: "Deploy to App Store")
    ]
    @State private var newTaskTitle = ""
    
    var body: some View {
        VStack {
            Text("TaskTracker")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Stay organized in 2026")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            
            Text("You have completed \(taskCount) tasks")
            
            Button("Add Task"){
                taskCount += 1
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
