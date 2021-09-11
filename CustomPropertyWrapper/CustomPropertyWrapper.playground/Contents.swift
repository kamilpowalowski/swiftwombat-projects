@propertyWrapper
struct Logged<Value> {
    private var value: Value

    init(wrappedValue: Value) {
        value = wrappedValue
    }

    var wrappedValue: Value {
        get {
            print("Value get: \(value)")
            return value
        }
        set {
            print("Value set: \(newValue)")
            value = newValue
        }
    }
}

// Property wrappers are not supported on top level
struct Object {
    @Logged var value = 0
}

var object = Object()

print("Value is equal to: \(object.value)")
print("---")
object.value = 100
print("---")
print("Value is equal to: \(object.value)")
