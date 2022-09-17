import Foundation

func printLine() -> String {

    let filename = "test"
    var text: String
    var myCounter: Int

    guard let file = Bundle.main.url(forResource: filename, withExtension: "txt")

    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        let contents = try String(contentsOf: file, encoding: String.Encoding.utf8 )
        let lines = contents.split(separator:"\n")
        print(contents)
        print(lines)

        myCounter = lines.count

        print(myCounter)

        text = String(myCounter)

    } catch {
            return (error.localizedDescription)
    }
    return text
}

printLine()