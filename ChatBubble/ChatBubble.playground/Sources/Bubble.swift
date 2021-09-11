import SwiftUI

public struct Bubble: View {
    public enum Mode {
        case sender, receiver
    }

    let text: String
    let mode: Mode

    public init(text: String, mode: Mode) {
        self.text = text
        self.mode = mode
    }

    public var body: some View {
        HStack {
            if mode == .sender { spacer }
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "bubble.png"))
                    .resizable(capInsets: EdgeInsets(top: 39, leading: 49, bottom: 39, trailing: 49))
                    .renderingMode(.template)
                    .foregroundColor(bubbleForegroundColor)
                    .scaleEffect(scaleEffect)
                Text(text)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical)
                    .layoutPriority(1)
            }
            if mode == .receiver { spacer }
        }
        .padding(.vertical, 8)
        .frame(width: .infinity)
    }

    var bubbleForegroundColor: Color {
        switch mode {
        case .sender: return .gray
        case .receiver: return .blue
        }
    }

    var scaleEffect: CGSize {
        switch mode {
        case .sender: return CGSize(width: -1, height: 1)
        case .receiver: return CGSize(width: 1, height: 1)
        }
    }

    var spacer: some View { Spacer(minLength: 0) }
}
