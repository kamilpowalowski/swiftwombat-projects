import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Group {
                Text("italic")
                    .italic()
                Text("bold")
                    .bold()
                Text("weight .heavy")
                    .fontWeight(.heavy)
                Text("font .title")
                    .font(.title)
            }
            Group {
                Text("strikethrough")
                    .strikethrough()
                Text("strikethrough color")
                    .strikethrough(true, color: .red)
                Text("underline")
                    .underline()
                Text("underline color")
                    .underline(true, color: .red)
                Text("foregroundColor")
                    .foregroundColor(.red)
                Text("background")
                    .background(Color.red)
            }
            Group {
                Text("baseline ")
                    + Text("Off")
                    .baselineOffset(10)
                    + Text("set")
                    .baselineOffset(-10)
                Text("kerning kerning kerning")
                    .kerning(1.2)
                Text("tracking tracking tracking")
                    .tracking(1.2)
            }
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
