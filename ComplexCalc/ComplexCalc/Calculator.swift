//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ args: [Int]) -> Int{
        var result = 0
        for i in 0...(args.count-1) {
            result += args[i]
        }
        return result
    }
    
    func add(lhs: (Int,Int), rhs: (Int,Int)) -> (Int,Int){
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (Int,Int), rhs: (Int,Int)) -> (Int,Int){
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ args: [Int]) -> Int{
        var result = 0
        for i in 0...(args.count-1) {
            result *= args[i]
        }
        return result
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func count(_ args: [Int]) -> Int{
        var result = 0
        for _ in 0...(args.count-1) {
            result += 1
        }
        return result
    }
    
    func avg(_ args: [Int]) -> Int{
        return add(args)/args.count
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs,rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result = beg
        for i in 0...(args.count-1) {
            result = op(result,args[i])
        }
        return result
    }
}
