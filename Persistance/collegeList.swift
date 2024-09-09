//
//  collegeList.swift
//  Persistance
//
//  Created by Christopher Chang on 8/29/24.
//

import SwiftUI
import SwiftData

struct collegeListView: View {
    
    @Environment(\.modelContext) var context
    @Query var colleges: [TaskList]
    @State var collegeName = ""
    @State var collegePrice = 0
    @State var collegeAlert = false
    
    var body: some View {
        VStack {
            Button(action: {
                collegeAlert.toggle()
            }, label: {
                Text("+")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            })
            .padding()
            .alert("New College", isPresented: $collegeAlert) {
                TextField("Enter college name", text: $collegeName)
//                    .textFieldStyle(.roundedBorder)
                TextField("Enter the price for one year", value: $collegePrice, format: .number)
//                    .textFieldStyle(.roundedBorder)
                HStack {
                    Button(action: {
                        let name = TaskList(task: "", collegeName: collegeName, collegePrice: collegePrice)
                        context.insert(name)
                    }, label: {
                        Text("Complete")
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("Erase")
                    })
                }
            }
            List {
                ForEach(colleges) { currentTask in
                    HStack {
                        VStack {
                            Text(currentTask.collegeName)
                            Text("$\(currentTask.collegePrice)")
                        }
                    }
                    
                }
                .onDelete(perform: deleteDestinations)
            }
            
        }
    }
    func deleteDestinations(_ indexSet: IndexSet) {
        for index in indexSet {
            let destination = colleges[index]
            context.delete(destination)
        }
    }
}
