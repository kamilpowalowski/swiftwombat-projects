import PlaygroundSupport
import SwiftUI

enum Animal: String, CaseIterable, Identifiable {
    case wombat, koala, platypus

    var id: String { rawValue }
}

struct ContentView: View {
    var body: some View {
        VStack {
            AnimalPicker()
            Divider()
            SimpleAlert()
        }
    }
}

struct AnimalPicker: View {
    @State private var selectedAnimal: Animal?

    var body: some View {
        VStack {
            Text("Please select an animal:")
            button(for: .wombat)
            button(for: .koala)
            button(for: .platypus)
        }
        .alert(item: $selectedAnimal) { animal in
            Alert(
                title: Text("Selected animal:"),
                message: Text(animal.rawValue.capitalized)
            )
        }
    }

    private func button(for animal: Animal) -> some View {
        Button(animal.rawValue.capitalized) {
            selectedAnimal = animal
        }
    }
}

struct SimpleAlert: View {
    @State private var showAlert = false

    var body: some View {
        Button("Show alert") {
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Uninstall this application"),
                message: Text("Do you want to uninstall this application? This action cannot be undone."),
                primaryButton: .cancel(),
                secondaryButton: .destructive(
                    Text("Uninstall"),
                    action: { /* do something */ }
                )
            )
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
        .frame(width: 400, height: 200)
)
