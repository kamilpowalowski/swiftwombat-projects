import PlaygroundSupport
import SwiftUI

// swizzleLocale()

let now = Date()
let hundredMinutes: TimeInterval = 100 * 60
let twoDays: TimeInterval = 2 * 24 * 60 * 60
let date = now.advanced(by: twoDays)

struct ContentView: View {
    var body: some View {
        VStack {
            Text(date, style: .time)
            Text(date, style: .date)
            Text(date, style: .relative)
            Text(date, style: .offset)
            Text(date, style: .timer)
            Text(DateInterval(start: now, duration: twoDays))
            Text(DateInterval(start: now, duration: hundredMinutes))
            Text(now ... date)
            Text("Styles can be used inside other strings with string interpolation: \(date, style: .relative)")
        }
    }
}

PlaygroundPage.current.setLiveView(
    ContentView()
        .padding()
        .frame(width: 300)
)
