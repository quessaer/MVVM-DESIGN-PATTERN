//
//  ContentView.swift
//  HelloMVVM
//
//  Created by J.T. Kim on 2021/10/29.
//

import SwiftUI

struct ContentView: View {
    
    // CounterView Model을 호출
    // @ObservedObject란 ObservableObject를 상속받는 클래스가 변경을 Publish하면 그 내용을 감지한다는 의미이다.
    @ObservedObject private var counterVM: CounterViewModel
    
    // counterViewModel을 이니셜라이즈 한다.
    init() {
        counterVM = CounterViewModel()
    }
    var body: some View {
        VStack {
            
            // 3의 배수마다 "PREMIUM" 메시지 출력하는 나의 수준.... 
//            if counterVM.value % 3 == 0 {
//                Text("PREMIUM")
//                    .frame(width: 200, height: 100)
//                    .font(.largeTitle)
//            } else {
//                Text("")
//                    .frame(width: 200, height: 100)
//                    .font(.largeTitle)
//            }
            
            Text(counterVM.premium ? "PREMIUM" : "")
                .foregroundColor(Color.green) // ""은 든 값이 없어서 foregroundColor를 변경해도 보이지 않음
                .frame(width: 200, height: 100)
                .font(.largeTitle)
            
            
            Text("\(counterVM.value)")
                .font(.title)
            Button("Increment") {
                // 클로저 안에 있으므로 CounterView에 있는 counterVM의 increment()를 사용한다는 의미로 "self."를 붙여줘야 함
                self.counterVM.increment()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
