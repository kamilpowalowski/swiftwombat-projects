import SwiftUI

struct IdentifiableList: View {
    private struct Continent: Identifiable {
        let id = UUID()
        let name: String
    }

    var body: some View {
        List(continents) {
            Text($0.name)
        }
        .navigationTitle("Identifiable list")
    }

    private let continents = [
        Continent(name: "Asia"),
        Continent(name: "Africa"),
        Continent(name: "North America"),
        Continent(name: "South America"),
        Continent(name: "Antarctica"),
        Continent(name: "Europe"),
        Continent(name: "Australia"),
    ]
}

struct IdentifiableList_Previews: PreviewProvider {
    static var previews: some View {
        IdentifiableList()
    }
}
