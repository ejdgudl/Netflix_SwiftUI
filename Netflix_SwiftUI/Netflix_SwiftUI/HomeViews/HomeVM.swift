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
    
    var allGenre: [HomeGenre] = [.allGenres, .action, .comedy, .horror, .thriller]
    
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
    
    func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .tvShow:
            return (movies[cat] ?? []).filter { ($0.movieType == .tvShow) && ($0.genre == genre) }
        case .movies:
            return (movies[cat] ?? []).filter { ($0.movieType == .movie) && ($0.genre == genre) }
        case .myList:
            return movies[cat] ?? []
        }
    }
}
