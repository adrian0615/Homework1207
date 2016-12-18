import Foundation


//Saving text to a file

let myString = "Adrian McDaniel"

let fileManager = FileManager.default
fileManager.createFile(atPath: "/User/AdrianHome/DemoFile.text", contents: myString.data(using: .utf8), attributes: nil)


//

func save(text: String) -> Bool {
    if let _ = try? myString.write(toFile: "/User/AdrianHome/DemoFile.text", atomically: true, encoding: .utf8) {
        return true
    } else {
        return false
    }
}


func load() -> String? {
    return try? String(contentsOfFile: "/User/AdrianHome/DemoFile.text", encoding: .utf8)
}

