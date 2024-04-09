//1.1
func minValue (_ a:Int, _ b:Int) -> Int{
  if(a <= b){
    return a;
  }
  else{
    return b;
  }
} 

print(minValue(6, 7));
print(minValue(8, 7));
print(minValue(5, 3));

//1.2
func lastDigit(_ number: Int) -> Int {
    return number % 10
}

print(lastDigit(12345));

//1.3
func divides(_ a: Int, _ b: Int) -> Bool {
    return a % b == 0
}

func countDivisors(_ number: Int) -> Int {
    var count = 0
    for i in 1...number {
        if divides(number, i) {
            count += 1
        }
    }
    return count
}

func isPrime(_ number: Int) -> Bool {
    return countDivisors(number) == 2
}

// Example usage
print(divides(7, 3)) // false
print(divides(8, 4)) // true

print(countDivisors(1)) // 1
print(countDivisors(10)) // 4
print(countDivisors(12)) // 6

print(isPrime(3)) // true
print(isPrime(8)) // false
print(isPrime(13)) // true

//2.1
func smartBart(_ n: Int, closure: () -> Void) {
    for _ in 0..<n {
        closure()
    }
}

let messageClosure = {
    print("I will pass this course with the best mark, because Swift is great!")
}

smartBart(5, closure: messageClosure)

//2.2
let numbers = [10, 16, 18, 30, 38, 40, 44, 50]
let multiplesOf4 = numbers.filter { $0 % 4 == 0 }
print(multiplesOf4) // Output: [16, 30, 40, 44]

//2.3
let largestNumber = numbers.reduce(numbers[0], { max($0, $1) })
print("The largest number is: \(largestNumber)")

//2.4
var strings = ["Gdansk", "University", "of", "Technology"]
let joinedString = strings.reduce("") { $0.isEmpty ? $1 : "\($0) \($1)" }
print(joinedString)

//2.5
let numbers1 = [1, 2 ,3 ,4, 5, 6]

let sumOfSquaredOdds = numbers1.filter { $0 % 2 != 0 }
                             .map { $0 * $0 }
                             .reduce(0, +)

print(sumOfSquaredOdds)

//3.1
func minmax (_ a:Int, _ b:Int) -> (min: Int, max: Int){
  if(a >= b){
    return (b, a)
  }
  else{
    return (a, b)
  }
} 
print(minmax(7, 6))

//3.2
var stringsArray = ["gdansk", "university", "gdansk", "university", "university", "of", "technology", "technology", "gdansk", "gdansk"]

var countedStrings = [(String, Int)]()
for string in stringsArray {
    if let index = countedStrings.firstIndex(where: { $0.0 == string }) {
        countedStrings[index].1 += 1
    } else {
        countedStrings.append((string, 1))
    }
}
print(countedStrings)


//4.1
enum Day: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
    
    func emoji() -> String {
        switch self {
        case .monday:
            return "😔"
        case .tuesday:
            return "🐢"
        case .wednesday:
            return "🐪"
        case .thursday:
            return "🍂"
        case .friday:
            return "🎉"
        case .saturday:
            return "🥳"
        case .sunday:
            return "☕️"
        }
    }
}

let today = Day.monday
print("Today is \(today) \(today.emoji())")



