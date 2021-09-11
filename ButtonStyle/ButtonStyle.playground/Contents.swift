import PlaygroundSupport
import SwiftUI

struct BorderedButtonStyle: PrimitiveButtonStyle {
    let color: Color

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(color)
            Button(configuration)
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            Button("Default button style", action: {})
                .buttonStyle(DefaultButtonStyle())
            Button("Plain button style", action: {})
                .buttonStyle(PlainButtonStyle())
            Button("Borderless button style", action: {})
                .buttonStyle(BorderlessButtonStyle())
            Button("Bordered button style", action: {})
                .buttonStyle(BorderedButtonStyle(color: .orange))
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
