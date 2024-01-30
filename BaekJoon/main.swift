//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//


import Foundation 
import SwiftUI
import Foundation

var nm = readLine()!.split(separator: " ").map{ Int($0)! }
let N = nm[0]
let M = nm[1]

var stack = [Int]()

private func dfs() {
    if stack.count == M {
        print(stack.map{ String($0) }.joined(separator:" "))
        return
    }

    for i in 1...N {
        if !stack.contains(i) {
            stack.append(i)
            dfs()
            stack.removeLast()
        }

    }
}

dfs()
