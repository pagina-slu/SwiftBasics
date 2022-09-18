func multiply(a: Int, b: Int) -> Int {      //multiply two integers
   return a*b
}

//optionals return types

func minMax(array: [Int]) -> (min: Int, max: Int)? {
   if array.isEmpty { return nil }
   var currentMin = array[0]
   var currentMax = array[0]
   
   for value in array[1..<array.count] {
      if value < currentMin {
         currentMin = value
      } else if value > currentMax {
         currentMax = value
      }
   }
   return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {     //take note : external parameters names
   print("min is \(bounds.min) and max is \(bounds.max)")
}

//inout

func temp(a1: inout Int, b1: inout Int) {
   let t = a1
   a1 = b1
   b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")
