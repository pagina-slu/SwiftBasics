//Initializing arrays

var a0 = [Int]()                                // cretes an empty array
var a1 = (count: 3, repeatedValue: 0)            // create an empty array of Int type having 3 elements and the initial value as zero 
var a2:[Int] = [1, 2, 3]                         // create an array of three elements[1,2,3] 

//Accessing Arrays

let value = a2[1]               
print(value)                                //2
print("the first value is \(a2[0])")        //the first value is 1

//Modifying Arrays

a0.append(11)                           //append 11
a0.append(12)                           //append 12
a0 += [13]                              // add 13
print(a0)                                  //[11, 12, 13]

a0[0] = 20                              // modify the first element
print(a0)                               //[20, 12, 13]

//adding two arrays

var a3 = a0 + a2                        // adds array a0 and a2
print(a3)                               // [20, 12, 13, 1, 2, 3]