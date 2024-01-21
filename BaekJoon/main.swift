//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//


import Foundation 
import SwiftUI
import Foundation

func findDominantArmy(in land: [Int]) -> String { //점령하고 있는 군인들의 땅을 찾는 함수선언
    var soldierCount = [Int: Int]() //솔져카운터라는 변수에다가 딕셔너리 형태의 값을 넣어주는거임 키와 벨류 모두 Int 형으로다가

    for army in land { // 군대부터 땅의 수까지 찾아버림
        soldierCount[army, default: 0] += 1 //그렇게 해서 키가 army일때 어떤 army에 대한 value 를 하나씩 올려 줌
    }

    if let (dominantArmy, count) = soldierCount.max(by: { $0.value < $1.value }), // 점령한 군인의 카운트랑 솔져 카운터의 최대인값을 넣어주고 그 카운트를 반으로 나눠서 어디까지가 절반인지 파악 절반을 넘으면 점령한거니까 그렇게 볼수도 있음
       count > land.count / 2 {
        return "\(dominantArmy)" // 이러면 점령 군인을 리턴
    } else {
        return "SYJKGW" // 그게아닐때 이 값을 리턴
    }
}

func main() {
    let n = Int(readLine()!)!
    var results = [String]()

    for _ in 0..<n {
        let land = readLine()!.split(separator: " ").map { Int($0)! }
        let soldiers = Array(land[1...])
        results.append(findDominantArmy(in: soldiers))
    }

    for result in results {
        print(result)
    }
}

main()
