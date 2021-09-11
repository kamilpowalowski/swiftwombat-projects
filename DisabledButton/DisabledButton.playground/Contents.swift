import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    @State private var disabled = false

    var body: some View {
        VStack {
            Button("Press me 1", action: { disabled.toggle() })
            Button("Press me 2", action: {})
                .disabled(true)
            VStack {
                Button("Press me 3", action: {})
                Button("Press me 4", action: {})
                    .disabled(false)
                Button("Press me 5", action: {})
                    .disabled(true)
            }
            .disabled(disabled)
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
