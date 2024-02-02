//
//  14888.swift
//  BaekJoon
//
//  Created by 양시관 on 2/2/24.
//
// 첫 번째 입력: 숫자의 개수
import Foundation
let n = Int(readLine()!)!

// 두 번째 입력: 숫자 배열
let nums = readLine()!.split(separator: " ").map { Int($0)! }

// 세 번째 입력: 연산자 개수 배열
var opersCount = readLine()!.split(separator: " ").map { Int($0)! }

// 초기값으로 최대값과 최소값을 설정
var maxValue = Int.min
var minValue = Int.max

// 깊이 우선 탐색 함수 (DFS)
func dfs(answer: Int, d: Int) {
    // 모든 숫자를 사용한 경우
    if d == n {
        // 최대값과 최소값 업데이트
        maxValue = max(maxValue, answer)
        minValue = min(minValue, answer)
        return
    }
    
    // 4가지 연산자를 순회
    for i in 0..<4 {
        // 해당 연산자의 개수가 0이면 스킵
        if opersCount[i] < 1 {
            continue
        }
        // 해당 연산자 개수 감소
        opersCount[i] -= 1
        // 연산자에 따라 계산하고 다음 숫자로 재귀 호출
        switch i {
        case 0:
            dfs(answer: answer + nums[d], d: d + 1) // 덧셈
        case 1:
            dfs(answer: answer - nums[d], d: d + 1) // 뺄셈
        case 2:
            dfs(answer: answer * nums[d], d: d + 1) // 곱셈
        case 3:
            dfs(answer: answer / nums[d], d: d + 1) // 나눗셈
        default:
            break
        }
        // 연산자 개수 복원
        opersCount[i] += 1
    }
}

// 초기값으로 첫 번째 숫자를 사용하고 DFS 시작
dfs(answer: nums[0], d: 1)

// 최대값과 최소값 출력
print(maxValue)
print(minValue)
