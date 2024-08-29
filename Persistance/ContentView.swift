//
//  ContentView.swift
//  Persistance
//
//  Created by Quincy Alex on 8/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Task List", destination: taskListView())
                .buttonStyle(.borderedProminent)
                
                
            //NavigationLink("College List", destination: collegeListView())
            //  .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
