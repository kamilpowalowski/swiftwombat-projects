import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(uiImage: #imageLiteral(resourceName: "wombat.png"))
            Image(uiImage: #imageLiteral(resourceName: "wombat.png"))
                .resizable()
                .frame(width: 300, height: 300)
            Image(uiImage: #imageLiteral(resourceName: "wombat.png"))
                .interpolation(.none)
                .resizable()
                .frame(width: 300, height: 300)
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
)
