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
                    let task = TaskList(task: newTask)
                    context.insert(task)
                    newTask = ""
                }, label: {
                    Text("+")
                })
                .font(.largeTitle)
            }
            .padding()
            List {
                ForEach(tasks) { currentTask in
                    Text(currentTask.task)
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
