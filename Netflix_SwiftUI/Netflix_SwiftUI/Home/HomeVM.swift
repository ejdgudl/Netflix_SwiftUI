//
//  HomeVM.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/18.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    var allCategories: [String] {
        return movies.keys.map { String($0) }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["SCI"] = exampleMovies.shuffled()
    }
    
    func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
}
