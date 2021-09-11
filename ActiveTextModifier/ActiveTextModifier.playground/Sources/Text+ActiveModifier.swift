import SwiftUI

public extension Text {
    func italic(_ active: Bool) -> Text {
        guard active else { return self }
        return italic()
    }

    func active(
        _ active: Bool,
        _ modifier: (Text) -> Text
    ) -> Text {
        guard active else { return self }
        return modifier(self)
    }

    func active(
        _ active: Bool,
        _ modifier: (Text) -> () -> Text
    ) -> Text {
        guard active else { return self }
        return modifier(self)()
    }
}
