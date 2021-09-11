import SwiftUI

public struct Page: View {
    let title: String
    let image: UIImage
    let color: Color

    public init(
        title: String,
        image: UIImage,
        color: Color
    ) {
        self.title = title
        self.image = image
        self.color = color
    }

    public var body: some View {
        VStack {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .padding()
            Text(title)
                .bold()
                .font(.title)
                .foregroundColor(.white)
                .padding(.bottom, 32)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(color)
        .cornerRadius(16)
        .padding()
    }
}
