//
//  taskList.swift
//  Persistance
//
//  Created by Christopher Chang on 8/29/24.
//

import SwiftUI
import SwiftData

struct taskListView: View {
    @Environment(\.modelContext) var context
    @Query var tasks: [TaskList]
    @State var newTask = ""
    @State var removeTask = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter new task here", text: $newTask)
                    .textFieldStyle(.roundedBorder)
                Button("+") {
                    let task = TaskList(task: newTask)
                    context.insert(task)
                    newTask = ""
                }
                TextField("klfkls", text: $removeTask)
                    .textFieldStyle(.roundedBorder)
                Button("-") {
                    let task = TaskList(task: removeTask)
                    context.delete(task)
                    removeTask = ""
                }
               
            }
            .padding()
            List {
                ForEach(tasks) { currentTask in
                    
                        
                        Text(currentTask.task)
                }
                .onDelete(perform: deleteDestinations)
            }
        }
        .padding()
    }
    func deleteDestinations(_ indexSet: IndexSet) {
        for index in indexSet {
            let destination = tasks[index]
            context.delete(destination)
        }
    }
}



