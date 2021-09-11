import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @FocusState private var focus: Bool

    var body: some View {
        TextEditor(text: $text)
            .focused($focus)
            .frame(height: 150)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primary, lineWidth: 1)
            )
            .padding()
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Shrug") { text += "\n¯\\_(ツ)_/¯" }
                    Button("Flip") { text += "\n(╯°□°）╯︵ ┻━┻" }
                    Spacer()
                    Button("Hide") { focus = false }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
