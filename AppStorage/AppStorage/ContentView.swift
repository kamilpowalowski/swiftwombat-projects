import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ViewA()
            ViewB()
            ViewC()
            ViewD()
        }
    }
}

struct ViewA: View {
    @AppStorage("valueKey") var value: Int = 0

    var body: some View {
        VStack {
            Text("ViewA value: \(value)")
            Button("Increment") { value += 1 }
        }
        .expanded()
        .background(Color.yellow)
    }
}

struct ViewB: View {
    @AppStorage("valueKey") var value: Int = 0

    var body: some View {
        VStack {
            Text("ViewB value: \(value)")
            Button("Decrement") { value -= 1 }
        }
        .expanded()
        .background(Color.orange)
    }
}

struct ViewC: View {
    @AppStorage("valueKey", store: UserDefaults(suiteName: "com.swiftwombat.customStore")) var value: Int = 0

    var body: some View {
        VStack {
            Text("ViewC value in custom store: \(value)")
        }
        .expanded()
        .background(Color.red)
    }
}

struct ViewD: View {
    @AppStorage("savedDate") var date = Date()

    var body: some View {
        VStack {
            Text(date, style: .date)
            Text(date, style: .time)
            Button("Save date") { date = Date() }
        }
        .expanded()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
