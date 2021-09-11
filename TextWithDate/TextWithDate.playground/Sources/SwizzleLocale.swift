import Foundation

extension NSLocale {
    @objc class func mono_currentLocale() -> NSLocale {
        NSLocale(localeIdentifier: "fr")
    }
}

public func swizzleLocale() {
    guard let original = class_getClassMethod(NSLocale.self, #selector(getter: NSLocale.current)),
          let swizzled = class_getClassMethod(NSLocale.self, #selector(NSLocale.mono_currentLocale))
    else {
        print("Swizzle failed")
        return
    }

    method_exchangeImplementations(original, swizzled)
}
