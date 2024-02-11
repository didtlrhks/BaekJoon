//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
import Foundation
func solution() -> Int{
    let n = Int(readLine()!)!
    var people = readLine()!.split(separator: " ").map({Int($0)!})
    people = people.sorted()
    
    var result = 0
    
    for (index, value) in people.enumerated(){
        result += (value * (n - index))
    }
    
    return result
}

print(solution())

