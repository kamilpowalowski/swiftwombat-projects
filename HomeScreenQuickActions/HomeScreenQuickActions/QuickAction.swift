import Foundation

enum QuickAction: String {
    case newMessage, search, inbox
}

final class QuickActionService: ObservableObject {
    @Published var action: QuickAction?

    init(initialValue: QuickAction? = nil) {
        action = initialValue
    }
}
