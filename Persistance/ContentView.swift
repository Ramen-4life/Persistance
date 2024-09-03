
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
          .buttonStyle(.borderedProminent)
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


