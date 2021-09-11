import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    private static let colors = [
        Color(red: 0.427, green: 0.196, blue: 0.486),
        Color(red: 0.282, green: 0.365, blue: 0.651),
        Color(red: 0, green: 0.631, blue: 0.729),
        Color(red: 0.00392, green: 0.694, blue: 0.557),
        Color(red: 0.196, green: 0.702, blue: 0.482),
    ]

    private let gradient = LinearGradient(
        gradient: Gradient(colors: ContentView.colors),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )

    var body: some View {
        VStack {
            Text("Swift Wombat")
                .font(.system(size: 64))
                .bold()
                .foregroundGradient(gradient)
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 100, height: 100)
                .foregroundGradient(gradient)
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
