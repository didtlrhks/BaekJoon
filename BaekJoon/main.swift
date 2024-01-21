//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//


import Foundation 
import SwiftUI
import Foundation

func solution() -> Int {
    
    let temp = readLine()!.split(separator: " ").map({Int($0)!})
    let n = temp[0]
    var k = temp[1]
    
    var coins = [Int]()
    var result: Int = 0
    
    for _ in 0..<n{
        coins.append(Int(readLine()!)!)
    }
    
    coins = Array(coins.reversed())
    
    for value in coins{
        if value <= k{
            result += (k / value)
            k = (k % value)
        }
        if k == 0{
            break
        }
    }
    
    return result
}

print(solution())


