//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
import Foundation
func solution() {
    let t = Int(readLine()!)!
    var testCase: [Int] = []
    for _ in 0..<t {
        testCase.append(Int(readLine()!)!)
    }
    
    var result = [1,1,1,2,2]
    
    for i in 0..<95 {
        result.append(result[i] + result[i+4])
    }
    
    for num in testCase {
        print(result[num - 1])
    }
    
}


solution()

