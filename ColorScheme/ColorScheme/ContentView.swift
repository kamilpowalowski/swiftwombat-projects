import SwiftUI

// Photo by eric anada from Pexels
// https://www.pexels.com/photo/photo-of-light-bulb-1495580/

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme: ColorScheme

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
            if colorScheme == .dark {
                Rectangle()
                    .fill(Color.black.opacity(0.3))
            }
            Text("Swift Wombat")
                .font(.largeTitle)
                .bold()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
