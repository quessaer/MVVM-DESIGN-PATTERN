//
//  URL+Extensions.swift
//  MoviesApp
//
//  Created by J.T. Kim on 2021/10/30.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

extension URL {
    
    static func forMoviesByImdbId(_ imdbId: String) -> URL? {
        return URL(string: "http://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
    }
    // 이름으로 검색
    static func forMoviesByName(_ name: String) -> URL? {
        return URL(string: "http://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
    
}
