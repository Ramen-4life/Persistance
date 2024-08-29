//
//  taskList.swift
//  Persistance
//
//  Created by Quincy Alex on 8/27/24.
//

import Foundation
import SwiftUI
import SwiftData

struct taskListView: View {
    @Environment(\.modelContext) var context
    @Query var tasks: [TaskList]
    @State var newTask = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter new task here", text: $newTask)
                    .textFieldStyle(.roundedBorder)
                Button(action: {
                    let task = TaskList(task:newTask)
                    
                    newTask = ""
                }, label: {
                    Text("+")
                })
            }
            .padding()
            List {
                ForEach(tasks) { currentTask in
                    Button(action: {
                        currentTask.task = ""
                    }, label: {
                        Text(currentTask.task)
                    })
                }
            }
        }
        .padding()
    }
}

@Model
class TaskList {
    var task: String
    
    init(task: String) {
        self.task = task
    }
}
