import Foundation

// Main Code
let users = getUsers(filename: "users.txt")
let words = getWords(filename: "words.txt")

print("Enter username: ", terminator: "")
let username: String = readLine()!
print("Enter password: ", terminator: "")
let password: String = readLine()!

let loginSuccessful: Bool = login(username: username, password: password)
if !loginSuccessful {
    print("Login failed :(")
    exit(0)
}

print("Login successful!")

var currentUser = User(username: username, password: password)
var currentWord = getNewWord(words: words)

var guessedWordArray = Array(repeating: "_", count: currentWord.count)
var guessedWord = guessedWordArray.joined(separator: "")
var guessedLetters: [Character] = []

print("Word: \(guessedWord)")
while (currentUser.lives! != 0) {

    let input = readCharacter()

    if guessedLetters.contains(input) {
        print("You already guessed that letter!\n")
        continue
    }
    guessedLetters.append(input)

    if guessLetter(letter: input, word: currentWord) {
        let indices = getIndicesOfLetter(letter: input, word: currentWord)
        for i in indices{
            guessedWordArray[i] = String(input)
            guessedWord = guessedWordArray.joined(separator: "")
        }
        print("You guessed a letter! Your formed word: \(guessedWord)")
        // Validate word
        if guessedWord == currentWord {
            print("You guessed the word!")
            currentWord = getNewWord(words: words)
            guessedWordArray = Array(repeating: "_", count: currentWord.count)
            guessedWord = guessedWordArray.joined(separator: "")
            guessedLetters = []

            print("New word: \(guessedWord)")
        }

        print()
    } else {
        currentUser.lives! = currentUser.lives! - 1
        print("Wrong guess! Lives left: \(currentUser.lives!)\n")
    }
}
print("Game over! You lost all your lives.")
// print(login(username: username, password: password) ? "Login successful!" : "Login failed :(")

// Functions
func getWords(filename: String)  -> [String] {
    var words: [String] = []
    do {
        let file = try String(contentsOfFile: filename)
        let lines = file.components(separatedBy: "\n")
        for word in lines {
            words.append(word.replacingOccurrences(of: "\r", with: ""))
        }
    }
    catch {
        return [error.localizedDescription]
    }
    return words
}

func getUsers(filename: String)  -> [User] {
    var users: [User] = []
    do {
        let file = try String(contentsOfFile: filename)
        let lines = file.components(separatedBy: "\n")
        for line in lines {
            let lineArray = (line.components(separatedBy: ","))
            // print(lineArray)
            users.append(User(username: lineArray[0], password: (lineArray[1]).replacingOccurrences(of: "\r", with: "")))
        }
    }
    catch {
        print(error.localizedDescription)
        exit(0)
    }
    return users
}

func login(username: String, password: String)  -> Bool {
    for user in users {
        if user.username == username {
            if user.password == password {
                return true
            }
        }
    }
    return false
}

func readCharacter() -> Character {
    var input: String = ""
    while true {
        print("Enter a letter: ", terminator: "")
        input = readLine()!
        if input.count == 1 {
            break
        }
        print("Please enter a character only")
    }
    return Character(input)
}

func guessLetter(letter: Character, word: String) -> Bool {
    for c in word {
        if (letter == c) {
            return true
        }
    }
    return false
}

func getIndicesOfLetter(letter: Character, word: String) -> [Int] {
    // convert string to array
    //
    var indices: [Int] = []
    let array = Array(word)
    for i in 0..<word.count {
        if (array[i] == letter) {
            indices.append(i)
        }
    }
    return indices
}

func getNewWord(words: [String]) -> String {
    return words[Int.random(in: 0..<words.count)]
}

class User {
    var username: String?
    var password: String?
    var lives: Int?

    init() {
        self.username = nil
        self.password = nil
        self.lives = nil
    }
    init(username: String, password: String) {
        self.username = username
        self.password = password
        self.lives = 6
    }
}