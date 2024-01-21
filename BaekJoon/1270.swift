//
//  1270.swift
//  BaekJoon
//
//  Created by 양시관 on 1/20/24.
//

import Foundation

//
//
//func findDominantArmy(in land: [Int]) -> String {
//    var soldierCount = [Int: Int]()
//
//    for army in land {
//        soldierCount[army, default: 0] += 1
//    }
//
//    if let (dominantArmy, count) = soldierCount.max(by: { $0.value < $1.value }),
//       count > land.count / 2 {
//        return "\(dominantArmy)"
//    } else {
//        return "SYJKGW"
//    }
//}
//
//func main() {
//    let n = Int(readLine()!)!
//    var results = [String]()
//
//    for _ in 0..<n {
//        let land = readLine()!.split(separator: " ").map { Int($0)! }
//        let soldiers = Array(land[1...])
//        results.append(findDominantArmy(in: soldiers))
//    }
//
//    for result in results {
//        print(result)
//    }
//}
//
//main()
