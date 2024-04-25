import Foundation

struct Game {
    var word: String
    var guessedLetters: Set<Character> = []
    var maxAttempts: Int
    var remainingAttempts: Int
    
    init(word: String, maxAttempts: Int) {
        self.word = word
        self.maxAttempts = maxAttempts
        self.remainingAttempts = maxAttempts
    }
    
    func drawBoard() {
        var displayWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                displayWord.append(letter)
            } else {
                displayWord.append("_ ")
            }
        }
        print("Word: \(displayWord)")
        print("Remaining attempts: \(remainingAttempts)")
    }
    
    mutating func guess(letter: Character) {
        if !guessedLetters.contains(letter) {
            guessedLetters.insert(letter)
            if !word.contains(letter) {
                remainingAttempts -= 1
            }
        }
    }
    
    func isGameWon() -> Bool {
        return Set(word).subtracting(guessedLetters).isEmpty
    }
    
    func isGameLost() -> Bool {
        return remainingAttempts <= 0
    }
    
    mutating func startGame() {
        while !isGameWon() && !isGameLost() {
            drawBoard()
            print("Enter a letter:")
            if let input = readLine()?.lowercased(), let letter = input.first {
                guess(letter: letter)
            }
        }
        
        if isGameWon() {
            print("Congratulations! You've guessed the word: \(word)")
        } else {
            print("Sorry, you've run out of attempts. The word was: \(word)")
        }
    }
    
}

func chooseWord(category: String) -> String {
    switch category {
    case "cities":
        let cities = ["gdansk", "warsaw", "poznan", "wroclaw"]
        return cities.randomElement()!
    case "books":
        let books = ["witcher", "diune", "outsider", "shining"]
        return books.randomElement()!
    case "movies":
        let movies = ["FastandFurious", "stranger", "smile", "playlist"]
        return movies.randomElement()!
    default:
        return "swift"
    }
}

func maxAttemptsForLevel(level: String) -> Int {
    switch level {
    case "easy":
        return 9
    case "medium":
        return 6
    case "hard":
        return 3
    default:
        return 6
    }
}

let category = "cities"
let word = chooseWord(category: category)
let level = "hard"
let maxAttempts = maxAttemptsForLevel(level: level)
var newGame = Game(word: word, maxAttempts: maxAttempts)

newGame.startGame()
