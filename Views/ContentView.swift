//
//  ContentView.swift
//  TaskTracker
//
//  Created by admin on 5/26/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var taskCount: Int = 0
    @Query private var tasks: [Task]
    @Environment(\.modelContext) private var modelContext
    @State private var newTaskTitle = ""
    
    var body: some View {
        VStack {
            
            Text("TaskTracker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            
            HStack{
                TextField("New Task", text: $newTaskTitle)
                    .textFieldStyle(.roundedBorder)
                Button("Add"){
                    addTask()
                }
                .buttonStyle(.borderedProminent)
                .disabled(newTaskTitle.isEmpty)
            }
            
            // Lists of tasks
            List{
                ForEach(tasks) { task in
                    HStack{
                        Text(task.title)
                            .strikethrough(task.isCompleted)
                        Image(systemName: task.isCompleted ?
                              "checkmark.seal.fill": "circlebadge")
                    }
                    .onTapGesture {
                        toggleTask(task)
                    }
                }
                
                .onDelete(perform: deleteTask)
            }
        }
        
    }
    
    // add new tassk
    private func addTask(){
        let newTask = Task(title: newTaskTitle)
        modelContext.insert(newTask)  // SAVE TO THE DB
        print("Added task: \(newTask.title)")
        newTaskTitle = ""
    }
    
    // toggle tasks between isCompleted states
    private func toggleTask(_ task: Task){
        task.isCompleted.toggle()
    }
    
    // deletes tasks by swiping left
    private func deleteTask(at offsets:IndexSet){
        for index in offsets{
            modelContext.delete(tasks[index])
        }
    }
}

#Preview {
    ContentView()
}
