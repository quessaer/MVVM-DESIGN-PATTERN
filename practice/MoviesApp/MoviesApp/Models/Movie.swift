//
//  Movie.swift
//  MoviesApp
//
//  Created by J.T. Kim on 2021/10/30.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

struct MovieResponse: Codable {
    // 실제 검색 시 Movie 구조체가 여러 개 저장되어 있는것이 movies이므로, 어레이 형태로 넣어준다. 
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}



// Codable: Movie structure는 JSON을 디코딩/인코딩할 수 있다는 의미
struct Movie:Codable {
    let title: String
    let year: String
    let imdbId: String
    let poster: String
    
    // 실제 JSON 데이터는 Title, Year, Poster 등등으로 되어 있으므로 enum을 이용한다.
    // 단순히 let Title과 같이 하는 것은 Swift naming 방법과 다르므로 지양해야 한다.
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case poster = "Poster"
    }
}
