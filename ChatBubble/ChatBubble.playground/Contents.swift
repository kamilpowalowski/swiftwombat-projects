import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Bubble(
                text: "Did you hear about the Swift Wombat website?",
                mode: .receiver
            )
            Bubble(
                text: "No, tell me more.",
                mode: .sender
            )
            Bubble(
                text: "It's a knowledge base of SwiftUI tutorials. I encourage you to check it out.",
                mode: .receiver
            )
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .frame(width: 300)
        .padding()
)
