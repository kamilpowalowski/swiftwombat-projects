import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Page(
                title: "Wombat",
                image: #imageLiteral(resourceName: "wombat.png"),
                color: Color(hex: 0xF8CF3C)
            )
            Page(
                title: "Koala",
                image: #imageLiteral(resourceName: "koala.png"),
                color: Color(hex: 0xF6B6AC)
            )
            Page(
                title: "Platypus",
                image: #imageLiteral(resourceName: "platypus.png"),
                color: Color(hex: 0xF26E64)
            )
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .frame(width: 300, height: 300)
)
