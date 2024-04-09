//1.1
var number1 = 5
var number2 = 10

print("\(number1) + \(number2) = \(number1 + number2)")

//1.2
var gut = "Gdansk University of Technology"
var new_gut = ""

for char in gut
{
  if char == "n"
  {
    new_gut += "⭐️"
  }
  else
  {
    new_gut += "\(char)"
  }
}
print(new_gut)

//1.3
var name = "Marcel Grużewski"
var reversed_name = String(name.reversed())
print(reversed_name)

//2.1
for _ in 1...11
{
  print("I will pass this course with best mark, because Swift is great!")
}

//2.2
var N1 = 5
for i in 1...N1
{
  print(i*i)
}

//2.3
var N2 = 4
for _ in 1...N2
{
  for _ in 1...N2{
    print("@", terminator: "")
  }
  print("")
}

//3.1
var numbers1 = [5, 10, 20, 15, 80, 13]
print(numbers1.max()!) //'!' so it is not "Optional(80)"

//3.2
var numbers2 = [5, 10, 20, 15, 80, 13]
for i in (0..<numbers2.count).reversed()
{
  print(numbers2[i], terminator: " ")
}
print("")

//3.3
var allNumbers = [10, 20, 10, 11, 13, 20, 10, 30]
var unique = [Int]()
var counter: Int
for j in 0..<allNumbers.count{
  counter = 0
  for i in 0..<unique.count{
    if allNumbers[j] == unique[i]{
      counter+=1
    }
  }
  if counter == 0{
    unique += [allNumbers[j]]
  }
}
for i in 0..<unique.count
{
  print(unique[i], terminator: " ")
}
print("")

//4.1
var number = 10
var divisors = Set<Int>()
for i in 1...number{
  if number % i == 0{
    divisors.insert(i)
  }
}
for divisor in divisors.sorted() {
    print(divisor, terminator: " ")
}
print("")

//5.1
var flights: [[String: String]] = [
    [
        "flightNumber" : "AA8025",
        "destination" : "Copenhagen"
    ],
    [
        "flightNumber" : "BA1442",
        "destination" : "New York"
    ],
    [
        "flightNumber" : "BD6741",
        "destination" : "Barcelona"
    ]
]
var flightNumbers = [String]()
for i in 0..<flights.count{
  if let flightNumber = flights[i]["flightNumber"] {
        flightNumbers.append(flightNumber)
    }
}
for i in 0..<flightNumbers.count
{
  print(flightNumbers[i], terminator: " ")
}
print("")

//5.2
var names = ["Hommer","Lisa","Bart"]
var fullName = [[String: String]]()

for name in names {
    let person: [String: String] = ["lastName": "Simpson", "firstName": name]
    fullName.append(person)
}
print(fullName)