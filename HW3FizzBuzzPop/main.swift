//
//  main.swift
//  HW3FizzBuzzPop
//
//  Created by Aiganym Moldagulova on 06/12/2021.
//

import Foundation

@resultBuilder
struct StringAddBuilder{
    static func buildBlock(_ components: String...) -> String {
        let s = components.joined()
        var newString = ""
        for char in s{
            if(char.isNumber){
                let number = char.wholeNumberValue
                if(number! % 3 == 0){
                    if(number! % 5 == 0){
                        if(number! % 7 == 0){
                            newString = newString + " " + "fizz buzz pop"
                        }
                        else{
                            newString = newString + " " + "fizz buzz"
                        }
                    }
                    else{
                        newString = newString + " " + "fizz"
                    }
                }
                else if(number! % 5 == 0){
                    if(number! % 7 == 0){
                        newString = newString + " " + "buzz pop"
                    }
                    else{
                        newString = newString + " " + "buzz"
                    }
                    
                }
                else if(number! % 7 == 0){
                    if(number! % 3 == 0){
                        newString = newString + " " + "fizz pop"
                    }
                    else{
                        newString = newString + " " + "pop"
                    }
                }
                else{
                    newString = newString + " " + String(number!)
                }
            }
            else{
                newString = newString + " " + String(char)
            }
        }
        return newString
    }
}
 
func build(@StringAddBuilder _ content: () -> String) -> String{
    content()
}
//Example input
//let longString = build{
//    "akncxsd123456789dkf1518"
//}
func readString(){
    let s = readLine()
    guard let stringCheck = s else{return}
    let newString = build{
        stringCheck
    }
    print(newString)
}

print("Enter any string containing numbers: ")
readString()

