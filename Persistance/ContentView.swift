
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
class TaskList   {
    var task: String
    var collegeName: String
    var collegePrice: Int
    
    init(task: String, collegeName: String, collegePrice: Int) {
        self.task = task
        self.collegeName = collegeName
        self.collegePrice = collegePrice
    }
}

#Preview {
    ContentView()
        .modelContainer(for:TaskList.self)
        
}

