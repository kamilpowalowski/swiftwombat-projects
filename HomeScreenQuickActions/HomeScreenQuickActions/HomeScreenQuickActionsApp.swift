import SwiftUI

@main
struct HomeScreenQuickActionsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase

    private let quickActionService = QuickActionService()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(quickActionService)
        }
        .onChange(of: scenePhase) { scenePhase in
            switch scenePhase {
            case .active:
                guard let shortcutItem = appDelegate.shortcutItem else { return }
                quickActionService.action = QuickAction(rawValue: shortcutItem.type)
            case .background:
                addDynamicQuickActions()
            default: return
            }
        }
    }

    private func addDynamicQuickActions() {
        UIApplication.shared.shortcutItems = [
            UIApplicationShortcutItem(
                type: QuickAction.newMessage.rawValue,
                localizedTitle: "New Message",
                localizedSubtitle: nil,
                icon: UIApplicationShortcutIcon(type: .compose),
                userInfo: nil
            ),
            UIApplicationShortcutItem(
                type: QuickAction.inbox.rawValue,
                localizedTitle: "Inbox",
                localizedSubtitle: "7 new messages",
                icon: UIApplicationShortcutIcon(systemImageName: "tray"),
                userInfo: nil
            ),
        ]
    }
}
