//
//  ContentView.swift
//  URLImageDemo
//
//  Created by J.T. Kim on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    
    let elons = [
        "https://i.pinimg.com/originals/cf/d2/05/cfd20541183a75c85517da92a2696711.jpg",
         "https://cdn.motivationgrid.com/wp-content/uploads/2015/07/15-Extraordinary-people-Elon-Musk-quotes-600x515.jpg?mrf-size=m",
         "https://i0.wp.com/hightarget.org/wp-content/uploads/2021/08/elon-musk-quotes.jpg?resize=700%2C867&ssl=1",
        "https://i.pinimg.com/736x/92/61/1a/92611adcbdfb573b54f8af32258fa919.jpg"
    ]
    
    var body: some View {
//        List {
//            ForEach(elons, id:\.self) {quote in
//                URLImage(url: quote)
//            }
//        }
        
        List(self.elons, id: \.self) { quote in
            URLImage(url: quote)
                .aspectRatio(contentMode: .fit)
        }
        
//        URLImage(url: "https://blog.kakaocdn.net/dn/ywvHh/btqCB8UdsOH/gDuH5hk2OccbOR85T290gK/img.png")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
