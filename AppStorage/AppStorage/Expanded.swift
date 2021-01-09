import SwiftUI

private struct Expanded: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity
            )
    }
}

extension View {
    func expanded() -> some View {
        modifier(Expanded())
    }
}
