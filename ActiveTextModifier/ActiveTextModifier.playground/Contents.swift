import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    @State private var isItalic = true

    var body: some View {
        Text("Hello ")
            + Text("Swift Wombat")
            .italic(isItalic)
            .active(true, Text.bold)
            .active(true) { $0.font(.title) }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
        .frame(width: 300)
)
