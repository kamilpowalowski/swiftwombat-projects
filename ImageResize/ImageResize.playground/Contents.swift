import PlaygroundSupport
import SwiftUI

let size: CGFloat = 150

struct ContentView: View {
    var body: some View {
        VStack {
            Image(uiImage: #imageLiteral(resourceName: "cover.png"))
                .resizable()
                .frame(height: size)
            Image(uiImage: #imageLiteral(resourceName: "cover.png"))
                .resizable()
                .scaledToFit()
                .frame(height: size)
            Image(uiImage: #imageLiteral(resourceName: "cover.png"))
                .resizable()
                .scaledToFill()
                .frame(height: size)
            Image(uiImage: #imageLiteral(resourceName: "cover.png"))
                .resizable()
                .aspectRatio(6, contentMode: .fit)
                .frame(height: size)
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .frame(width: size)
)
