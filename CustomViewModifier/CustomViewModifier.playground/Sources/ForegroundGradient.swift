import SwiftUI

struct ForegroundGradient: ViewModifier {
    let gradient: LinearGradient

    func body(content: Content) -> some View {
        content
            .overlay(gradient)
            .mask(content)
    }
}

public extension View {
    func foregroundGradient(_ gradient: LinearGradient) -> some View {
        modifier(ForegroundGradient(gradient: gradient))
    }
}
