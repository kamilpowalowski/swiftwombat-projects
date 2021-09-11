import SwiftUI

struct ContentView: View {
    @State private var text: String = "Initial text"
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: $text)
                .frame(maxHeight: 100)
            Text("Current text:\n\(text)")
            Spacer()
        }
        .padding()
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.delegate = context.coordinator
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray.cgColor
        view.layer.cornerRadius = 8
        return view
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(text: $text)
    }

    func updateUIView(_ uiView: UITextView, context _: Context) {
        uiView.text = text
    }

    class Coordinator: NSObject, UITextViewDelegate {
        @Binding private var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func textViewDidChange(_ textView: UITextView) {
            text = textView.text
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
