import SwiftUI

struct MultiDimensionalList: View {
    private struct Continent: Identifiable {
        let id = UUID()
        let name: String
        let animals: [Animal]
    }

    private struct Animal: Identifiable {
        let id = UUID()
        let name: String
    }

    var body: some View {
        List {
            ForEach(continents) { continent in
                Section(header: Text(continent.name)) {
                    ForEach(continent.animals) { animal in
                        Text(animal.name)
                    }
                }
            }
        }
    }

    private let continents = [
        Continent(
            name: "Asia",
            animals: [
                Animal(name: "Cobra"),
                Animal(name: "Mandarin Duck"),
                Animal(name: "Panda"),
                Animal(name: "Tiger"),
                Animal(name: "Water Buffalo"),
            ]
        ),
        Continent(
            name: "Africa",
            animals: [
                Animal(name: "Camel"),
                Animal(name: "Elephant"),
                Animal(name: "Gazelle"),
                Animal(name: "Hornbill"),
                Animal(name: "Lion"),
            ]
        ),
        Continent(
            name: "North America",
            animals: [
                Animal(name: "Bald Eagle"),
                Animal(name: "Beaver"),
                Animal(name: "Bison"),
                Animal(name: "Moose"),
                Animal(name: "Raccoon"),
            ]
        ),
        Continent(
            name: "South America",
            animals: [
                Animal(name: "Anteater"),
                Animal(name: "Armadillo"),
                Animal(name: "Llama"),
                Animal(name: "Monkey"),
                Animal(name: "Parrot"),
            ]
        ),
        Continent(name: "Antarctica",
                  animals: [
                      Animal(name: "Polar Bear"),
                      Animal(name: "Walrus"),
                      Animal(name: "Penguin"),
                      Animal(name: "Narwhal"),
                  ]),
        Continent(
            name: "Europe",
            animals: [
                Animal(name: "Deer"),
                Animal(name: "Red Squirrel"),
                Animal(name: "Stork"),
                Animal(name: "Wild Boar"),
                Animal(name: "Wolf"),
            ]
        ),
        Continent(
            name: "Australia",
            animals: [
                Animal(name: "Wombat"),
                Animal(name: "Kangaroo"),
                Animal(name: "Koala"),
                Animal(name: "Quokka"),
                Animal(name: "Platypus"),
            ]
        ),
    ]
}

struct MultiDimensionalList_Previews: PreviewProvider {
    static var previews: some View {
        MultiDimensionalList()
    }
}
