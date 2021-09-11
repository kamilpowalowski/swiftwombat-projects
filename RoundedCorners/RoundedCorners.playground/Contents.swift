import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            text
                .background(Color.green)
                .cornerRadius(16)
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(.green)
                text
            }
            text
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder()
                        .foregroundColor(.green)
                )
        }
    }

    private var text: some View {
        Text("Swift Wombat")
            .font(.largeTitle)
            .padding()
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
