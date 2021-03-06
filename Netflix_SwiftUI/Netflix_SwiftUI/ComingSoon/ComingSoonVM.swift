//
//  ComingSoonVM.swift
//  Netflix_SwiftUI
//
//  Created by κΉλν on 2022/03/31.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
