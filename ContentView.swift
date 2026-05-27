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
        Task(title: "Learn Swift", isCompleted: true),
        Task(title: "Build an App"),
        Task(title: "Deploy to App Store")
    ]
    @State private var newTaskTitle = ""
    
    var body: some View {
        VStack {
            Text("TaskTracker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            
            // Lists of tasks
            List{
                ForEach(tasks) { task in
                    HStack{
                        Text(task.title)
                            .strikethrough(task.isCompleted)
                        Image(systemName: task.isCompleted ?
                              "checkmark.seal.fill": "circlebadge")
                    }
                }
            }
        }
        
    }
    
    private func addTask(){
        let newTask = Task(title: newTaskTitle)
        tasks.append(newTask)
        newTaskTitle = ""
    }
}

#Preview {
    ContentView()
}
