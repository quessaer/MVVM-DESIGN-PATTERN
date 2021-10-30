//
//  Counter.swift
//  HelloMVVM
//
//  Created by J.T. Kim on 2021/10/29.
//

import Foundation
// 역할: 비니지스 로직 수행, rule과 regulation

// 가장 중요한 비지니스 로직이 들어간다. 민감정보가 들어갈 수 있으므로 노출되면 안되는 매우 중요한 모델이다.
// 예를들어 비용을 계산하는 방법이 아닌 비용 비율이나 최종 계산된 실제 비용 등을 말한다.(계산 방식 등이 아님... 이는 중요하지만
// 민감정보 까지는 아니다.)
struct Counter {
    var value: Int = 0
    var isPremium: Bool = false
    
    // 구조체 내 프로퍼티 변경을 위해서는 mutating 키워드가 들어가야 한다. 
    mutating func increment() {
        value += 1
        
        // 여기서 바로 3의 배수를 체크한다.(비지니스 로직이므로 View Model이 아닌 "Model"에 포함시킨다.)
        if value.isMultiple(of: 3) {
            // premium
            isPremium = true
        } else {
            /// not premimu
            isPremium = false
        }
    }
}
