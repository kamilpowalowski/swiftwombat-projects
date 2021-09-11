import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    private let url = URL(string: "http://placekitten.com/200/200")
    var body: some View {
        VStack {
            AsyncImage(url: url)
                .frame(width: 200, height: 200)
                .padding()
            AsyncImage(url: url) { image in
                image.resizable()
            } placeholder: {
                Text("Loading...")
            }
            .frame(width: 100, height: 100)
            .padding()
            AsyncImage(
                url: url,
                transaction: Transaction(
                    animation: .easeInOut
                )
            ) { phase in
                if let image = phase.image {
                    image.resizable()
                } else if phase.error != nil {
                    Text("Error!")
                } else {
                    Text("Loading...")
                }
            }
            .frame(width: 100, height: 100)
            .padding()
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
)
