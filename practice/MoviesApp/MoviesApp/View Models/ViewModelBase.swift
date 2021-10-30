//
//  ViewModelBase.swift
//  MoviesApp
//
//  Created by J.T. Kim on 2021/10/30.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewmodelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
