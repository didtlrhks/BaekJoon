//
//  15652.swift
//  BaekJoon
//
//  Created by 양시관 on 2/5/24.
//


import Foundation
// 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]

// 결과 저장 배열
var result = [Int]()

// dfs 구현
func dfs(_ now: Int) {
    // 탈출조건 (수열의 길이 == M)
    if result.count == M {
        print(result.map{ String($0) }.joined(separator: " "))
        return
    }
    
    // 반복문 (Range의 범위에 주의!)
    for i in now...N {
        result.append(i)
        dfs(i)
        _ = result.popLast()!
    }
}

dfs(1)
