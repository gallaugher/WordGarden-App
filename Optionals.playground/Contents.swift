import PlaygroundSupport

var text = "SWIFT"
text.count
text.last
print("The last letter in '\(text)' is \(text.last!)")

if let lastChar = text.last {
    text = String(lastChar)
} else {
    text = ""
}

print("text now contains '\(text)'")

text = ""
text.last
//nil == "" // Reminder nil != ""
//nil == 0  // Reminder nil != 0
//print("The last letter in '\(text)' is \(text.last!)")

//if text.last != nil {
//    text = "\(text.last!)"
//} else {
//    text = ""
//}

//if let lastChar = text.last {
//    text = String(lastChar)
//} else {
//    text = ""
//}

print("text now contains '\(text)'")

// nil coalescing operator ??
text = String(text.last ?? " ").trimmingCharacters(in: .whitespaces)
//if text == " " {
//    text = ""
//}
print("text now contains '\(text)'")

let newText = "         SWIFT      ".trimmingCharacters(in: .whitespaces)
print(newText, newText.count)

// guard statement - acts like a bouncer in a function. Sends you home early if you don't pass the test.
func coolCheck(name: String, cool: Bool) {
    guard cool else {
        return
    }
    print("I love being around cool people. I'm glad you're here \(name)")
}

coolCheck(name: "Jolene", cool: true)
coolCheck(name: "Prof. G.", cool: false)

// guard let
func returnLastCharacter(text: String) -> String {
    guard let lastCharacter = text.last else {
        return ""
    }
    print("Yeah! We got a last character and it's '\(lastCharacter)'")
    return String(lastCharacter)
}

text = "SWIFT"
text = returnLastCharacter(text: text)
print("returned = '\(text)'")

text = ""
text = returnLastCharacter(text: text)
print("returned = '\(text)'")
