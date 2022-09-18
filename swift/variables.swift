let anInt = 5               //size of int is dependent on the system
let aDouble = 2e3           //64 bit 
let aFloat:Float = 2.5      //32-bit 
let eightBit = Int8(-0xA)   // 8-bit signed integer
let sixtyFourBit:UInt64 = UInt64.max    //64-bit unsigned integer

// let not8Bit:UInt8 = 2000    // overflows 8bit

var name = "Taylor Swift"
let 💦 = "This is wet"

print(💦)

//tuples
let http404Error = (404, "Not Found") // http404Error is of type (Int, String),

print("The status code is \(http404Error.0)")

let (statusCode, statusMessage) = http404Error      //decoposing tuples 
print("The status message is \(statusMessage)")



// // Var vs Let

// var text1 = "This String is mutable"
// let text2 = "This string is not mustable"

// print(text1)
// print(text2)

// text1 = "Change value"
// print(text1)

// //text2 = "Change value"




// Nil and optionals

var str: String? 
str = "str is not nil"

if str != nil {
   print(str!)      // exclamation mark(!) unwarps the value of optionals
} else {
   print("str has nil value")
}


if let hasValue = str {         // this binds an optional variable to know if it contains a value or not
   print("The value is \"\(str!)\"")      
} else {
   print("str has nil value")
}
