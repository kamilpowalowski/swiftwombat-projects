import SwiftUI

struct Task: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let subtask: [Subtask]
}

struct Subtask: Identifiable {
    let id: String = UUID().uuidString
    let title: String
}

struct TasksView: View {
    private let tasks: [Task] = [
        Task(title: "Create playground", subtask: []),
        Task(title: "Write article", subtask: []),
        Task(
            title: "Prepare assets",
            subtask: [
                Subtask(title: "Cover image"),
                Subtask(title: "Screenshots"),
            ]
        ),
        Task(title: "Publish article", subtask: []),
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(tasks) { task in
                    TaskCell(task: task)
                        .animation(.default)
                }
                .navigationTitle("Todo List")
            }
        }
    }
}

struct TaskCell: View {
    @State private var isExpanded: Bool = false

    let task: Task

    var body: some View {
        content
            .padding(.leading)
            .frame(maxWidth: .infinity)
    }

    private var content: some View {
        VStack(alignment: .leading, spacing: 8) {
            header
            if isExpanded {
                Group {
                    ForEach(task.subtask) { subtask in
                        SubtaskCell(task: subtask)
                    }
                    EmptySubtaskCell()
                }
                .padding(.leading)
            }
            Divider()
        }
    }

    private var header: some View {
        HStack {
            Image(systemName: "square")
                .foregroundColor(Color.primary.opacity(0.2))
            Text(task.title)
        }
        .padding(.vertical, 4)
        .onTapGesture { isExpanded.toggle() }
    }
}

struct SubtaskCell: View {
    let task: Subtask

    var body: some View {
        HStack {
            Image(systemName: "circle")
                .foregroundColor(Color.primary.opacity(0.2))
            Text(task.title)
        }
    }
}

struct EmptySubtaskCell: View {
    @State private var text: String = ""

    var body: some View {
        HStack {
            Image(systemName: "circle")
                .foregroundColor(Color.primary.opacity(0.2))
            TextField("new task", text: $text)
        }
    }
}
