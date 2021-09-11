import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Swift Wombat")
                .overlay(
                    GeometryReader { geometry in
                        ZStack(
                            alignment: Alignment(
                                horizontal: .trailing,
                                vertical: .top
                            )
                        ) {
                            Rectangle()
                                .strokeBorder(
                                    style: StrokeStyle(lineWidth: 1, dash: [5])
                                )
                            Text("\(Int(geometry.size.width))x\(Int(geometry.size.height))")
                        }
                    }
                )
            Button("Subscribe", action: {})
                .padding()
                .frameSize()
            Text("Swift Wombat")
                .font(.largeTitle)
                .frameSize()
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 200, height: 100)
                .frameSize()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
