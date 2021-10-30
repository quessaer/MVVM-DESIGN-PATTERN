//
//  ContentView.swift
//  SwiftUIRatings
//
//  Created by J.T. Kim on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rating: Int?
    
    var body: some View {
        VStack {
            RatingView(rating: $rating)
            Text(rating != nil ? "Your rating: \(rating!)" : "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
