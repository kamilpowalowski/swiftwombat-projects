import SwiftUI

/*
 This project doesn't work in Xcode 13 beta 2.
 Task.sleep doesn't support that big numbers
 */

struct ContentView: View {
    @State private var rows = 0

    var body: some View {
        List(0 ..< rows, id: \.self) { number in
            Text("row \(number)")
        }
        .task {
            await Task.sleep(3_000_000_000)
            rows = 10
        }
        .refreshable {
            await Task.sleep(5_000_000_000)
            rows += 10
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
