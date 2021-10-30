//
//  ImageLoader.swift
//  URLImageDemo
//
//  Created by Mohammad Azam on 6/17/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation


// SwiftUI에서는 default image control이 없으므로 직접 만들어서 사용해야 함. 
class ImageLoader: ObservableObject {
    
    @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        
        guard let imageURL = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedData = data
            }
            
        }.resume()
        
    }
    
}
