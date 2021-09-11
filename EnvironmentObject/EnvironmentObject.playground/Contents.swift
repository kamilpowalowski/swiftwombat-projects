import PlaygroundSupport
import SwiftUI

class Counter: ObservableObject {
    @Published var value = 0
}

struct ContentView: View {
    @StateObject private var counter = Counter()

    var body: some View {
        CounterView()
            .environmentObject(counter)
    }
}

struct CounterView: View {
    @EnvironmentObject private var counter: Counter

    var body: some View {
        VStack {
            Text("\(counter.value)")
            Divider()
            IncrementView()
            Divider()
            DecrementView()
        }
    }
}

struct IncrementView: View {
    @EnvironmentObject private var counter: Counter

    var body: some View {
        Button("Increment", action: { counter.value += 1 })
    }
}

struct DecrementView: View {
    @EnvironmentObject private var counter: Counter

    var body: some View {
        Button("Decrement", action: { counter.value -= 1 })
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
