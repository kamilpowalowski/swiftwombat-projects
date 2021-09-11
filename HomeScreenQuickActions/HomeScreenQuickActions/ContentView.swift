import SwiftUI

struct ContentView: View {
    @EnvironmentObject var quickActions: QuickActionService

    var body: some View {
        VStack {
            Text("Home Screen Quick Actions")
            if let quickAction = quickActions.action {
                Text("Selected Quick Action: \(quickAction.rawValue)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(QuickActionService())
            ContentView()
                .environmentObject(QuickActionService(initialValue: .newMessage))
        }
    }
}
