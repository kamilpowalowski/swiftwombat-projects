import SwiftUI

struct ContentView: View {
    private enum Section: String, Identifiable, CaseIterable {
        case all, favorites, recommended

        var displayName: String { rawValue.capitalized }

        var id: String { rawValue }
    }

    @State private var selectedSection = Section.all

    var body: some View {
        VStack {
            Picker("Selected section:", selection: $selectedSection) {
                ForEach(Section.allCases) { section in
                    Text(section.displayName)
                        .tag(section)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            Spacer()
            Text("\(selectedSection.displayName)")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
