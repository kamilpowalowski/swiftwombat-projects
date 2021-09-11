import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "sunrise.fill")
            Text("Swift \(Image(systemName: "sun.max.fill")) Wombat")
            Image(systemName: "thermometer.sun.fill")
                .renderingMode(.original)
                .background(Color.gray)
            Image(systemName: "moon.circle.fill")
                .renderingMode(.original)
                .font(.headline)
            Image(systemName: "moon.circle")
                .font(Font.largeTitle.bold())
            Image(systemName: "moon.circle")
                .foregroundColor(.green)
        }
        .font(.largeTitle)
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
