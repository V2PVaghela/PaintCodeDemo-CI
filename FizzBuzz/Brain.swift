//
//  Brain.swift
//  FizzBuzz
//
//  Created by v2team on 02/08/16.
//  Copyright © 2016 Harshal. All rights reserved.
//

import Foundation


class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    func check(number: Int) -> String? {
        if isDivisibleByThree(number) && isDivisibleByFive(number) {
            return "FizzBuzz"
        }
        
        if isDivisibleByThree(number) {
            return "Fizz"
        }
        
        if isDivisibleByFive(number) {
            return "Buzz"
        }
        
        if number % 5 != 0 || number % 3 != 0 {
            return "\(number)"
        }
        return nil
    }
}