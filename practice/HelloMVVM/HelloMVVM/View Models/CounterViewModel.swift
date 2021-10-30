//
//  CounterViewModel.swift
//  HelloMVVM
//
//  Created by J.T. Kim on 2021/10/30.
//

import Foundation
import SwiftUI
// 역할: View의 value를 업데이트 하는 것

// 왜 struct가 아닌 class를 생성?
// 이는 ObservableObject 클래스를 상속받기 위함!!!

// ViewModel은 value를 "View"로 전달하는 역할을 한다.
class CounterViewModel: ObservableObject {
    // 프로퍼티가 변경될 때마다 View에 nitify 하기 위해 ObservableObject클래스를 사용한다.
    
    // counter의 값이 변경될 때마다 변경 사항을 Publish(알린다)
    // 1. counter는 Counter의 프로퍼티가 변경될 때 그 값이 바뀐다. (당연함)
    // 2. Counter는 Structure이다. Counter의 어떠한 것이라도 변경되면 invalidate(무효화 된다)
    // 2-1. 그러므로 property가 변경되면 "새로운" copy 본을 만든다.
    // 3. @Published wrapper가 붙으므로서 counter가 변경되면 새로운 structure를 사용해야 한다(값이 바뀐 copy로)
    // 3-1. 새로운 copy가 만들어 졌음을 자동으로 알려준다.
    // => 이 전체 task를 수행하는 것이 View Model의 역할이다. 
    
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value   // (1) 어떻게 업데이트 해야 하는가?
    }
    
    var premium: Bool {
        counter.isPremium
    }
    
    func increment() {
        counter.increment() // (2) conter.increment()를 실행하면 counter.value는 자동으로 업데이트된다.
    }
}
