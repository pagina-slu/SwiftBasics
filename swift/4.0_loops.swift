// for loops

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names { 
    print("Hello, \(name)!")
}
// Hello, Anna!
// Hello, Alex!
// Hello, Brian!
// Hello, Jack!


let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
// cats have 4 legs
// ants have 6 legs
// spiders have 8 legs


for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25


//while loop

var index = 10

while index < 20 {
   print( "Value of index is \(index)")
   index = index + 1
}
// Value of index is 10
// Value of index is 11
// Value of index is 12
// Value of index is 13
// Value of index is 14
// Value of index is 15
// Value of index is 16
// Value of index is 17
// Value of index is 18
// Value of index is 19


///repeat ... while loop
var index = 10

repeat {
   print( "Value of index is \(index)")
   index = index + 1
}
while index < 20
// Value of index is 10
// Value of index is 11
// Value of index is 12
// Value of index is 13
// Value of index is 14
// Value of index is 15
// Value of index is 16
// Value of index is 17
// Value of index is 18
// Value of index is 19