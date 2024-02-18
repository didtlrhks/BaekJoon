//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
import Foundation
func solution() -> Int {
    let n = Int(readLine()!)!
    var first: Int = 1
    var second: Int = 2
    if n == 1 {
        return first
    } else if n == 2 {
        return second
    } else {
        var result: Int = 0
        for _ in 3...n{
            result = (first + second) % 15746
            first = second % 15746
            second = result
        }
        return result
    }
}

print(solution())

