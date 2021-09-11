import SwiftUI

extension View {
    func frameSize() -> some View {
        modifier(FrameSize())
    }
}

private struct FrameSize: ViewModifier {
    static let color: Color = .blue

    func body(content: Content) -> some View {
        content
            .overlay(GeometryReader(content: overlay(for:)))
    }

    func overlay(for geometry: GeometryProxy) -> some View {
        ZStack(
            alignment: Alignment(
                horizontal: .trailing,
                vertical: .top
            )
        ) {
            Rectangle()
                .strokeBorder(
                    style: StrokeStyle(lineWidth: 1, dash: [5])
                )
                .foregroundColor(FrameSize.color)
            Text("\(Int(geometry.size.width))x\(Int(geometry.size.height))")
                .font(.caption2)
                .foregroundColor(FrameSize.color)
                .padding(2)
        }
    }
}
