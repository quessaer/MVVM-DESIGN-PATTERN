//
//  View-Extensions.swift
//  MoviesApp
//
//  Created by J.T. Kim on 2021/10/30.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI


// Navigation View를 추가하는 다른 방법
// View extensions을 만들어 단순히 메서드만 사용하면 NavigationView가 적용되도록 만든다. 
extension View {
    
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
