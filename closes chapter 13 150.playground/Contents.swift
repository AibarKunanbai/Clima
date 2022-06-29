//closures function step 1
import Cocoa
func calculate(n1:Int,n2: Int, operation: (Int,Int)-> Int )->  Int{
    return operation(n1,n2)
}
func multiply(no1: Int, no2: Int)-> Int{
    return no1 * no2
}
calculate(n1: 2, n2: 3, operation: multiply)
// step 2
/*
 calculate(n1: 2, n2: 3, operation: {(no1: Int, no2: Int)-> Int in
 return no1 * no2)} {} this is closures function
 */
//step 3 варианты
/*
 calculate(n1: 2, n2: 3, operation: {(no1, no2)-> Int in
 return no1 * no2)} {} this is closures function
 */
// step 4
/*
 calculate(n1: 2, n2: 3, operation: {(no1, no2) in  no1 * no2)} {} this is closures function
 */
// step 5
/*
 let result =calculate(n1: 2, n2: 3, operation: { $0 * $1)} {} this is closures function
 */


// closures with array

let array=[4,5,6,2,3]
func add(n1: Int)->Int {
    return n1 + 1
}
//array.map(add)
// closures
//array.map({(n1) in n1 + 1})
print(array.map({$0+1}))

// if you need Int to String
let newarray=array.map({"\($0)"})
print(newarray)
