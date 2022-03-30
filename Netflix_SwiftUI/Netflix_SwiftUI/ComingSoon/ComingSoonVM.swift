//
//  ComingSoonVM.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/03/31.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
