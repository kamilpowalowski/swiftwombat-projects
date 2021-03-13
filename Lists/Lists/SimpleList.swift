import SwiftUI

struct SimpleList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: IdentifiableList()) {
                    Text("Identifiable List")
                }
                NavigationLink(
                    destination: MultiDimensionalList()
                        .navigationTitle("Multi-Dimensional List")
                ) {
                    Text("Multi-Dimensional List")
                }
                NavigationLink(
                    destination: MultiDimensionalList()
                        .listStyle(InsetGroupedListStyle())
                        .navigationTitle("Inset Grouped Style")
                ) {
                    Text("Inset Grouped List Style")
                }
            }
            .navigationTitle("Simple list")
        }
    }
}

struct SimpleList_Previews: PreviewProvider {
    static var previews: some View {
        SimpleList()
    }
}
