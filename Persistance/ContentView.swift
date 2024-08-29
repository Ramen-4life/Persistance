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
        Text("Persistance")
            .font(.custom("Georgia", size: 50))
            .fontDesign(.serif)
            
        NavigationStack {
            NavigationLink("Task List", destination: taskListView())
                .buttonStyle(.borderedProminent)
            
            NavigationLink("College List", destination: collegeListView()) 
                
            
      //    .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
