import PlaygroundSupport
import SwiftUI

struct BellView: View {
    @State private var animate: Bool = false

    var body: some View {
        Image(systemName: "bell.badge.fill")
            .resizable()
            .scaledToFit()
            .rotationEffect(
                animate ? .zero : .degrees(30),
                anchor: UnitPoint(x: 0.5, y: 0.05)
            )
            .animation(.interpolatingSpring(stiffness: 200, damping: 2))
            .onAppear { animate = true }
    }
}

PlaygroundPage.current.setLiveView(
    BellView()
        .padding(32)
        .frame(width: 300, height: 200)
)
