//: Playground - noun: a place where people can play

import UIKit

var str = "Hello Playground"

str = "Hemanth Manjunatha"

// if statement
if str.characters.count > 7{
    print("Long name")
}else{
    print("Short name")
}


// switch statement
switch str.characters.count {
case 7...10:
    print("Long name")
case 5...7:
    print("Short name")
default:
    print("Some length")
}

// for loop
for cha in str.characters{
    print(cha)
}

// functions 

func domath(operation:String, a:Double, b:Double){
    print("Doing", operation, "on", a ,"and",b)
}

domath("+", a: 1, b: 6)

var image = [[1,2,3],[3,4,5],[5,6,7]]

print(image[0][2])

print(image)

if true {print("true")}



func add(a: Int, to b: Int){
    print("done")
}

let array = [Int]()

print(array)

let noValue:Int? = nil

let unwrappedValue = noValue

true









