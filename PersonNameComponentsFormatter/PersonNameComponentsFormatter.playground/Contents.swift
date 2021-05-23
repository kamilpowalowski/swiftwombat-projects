import Foundation

let formatter = PersonNameComponentsFormatter()
if let components = formatter.personNameComponents(from: "Sir David Frederick Attenborough") {
    print(components)
    formatter.style = .default
    print(formatter.string(from: components))
    formatter.style = .abbreviated
    print(formatter.string(from: components))
    formatter.style = .long
    print(formatter.string(from: components))
    formatter.style = .medium
    print(formatter.string(from: components))
    formatter.style = .short
    print(formatter.string(from: components))
}
