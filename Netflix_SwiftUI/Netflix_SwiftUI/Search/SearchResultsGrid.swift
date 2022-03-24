//
//  SearchResultsGrid.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/03/24.
//

import SwiftUI

struct SearchResultsGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: colums, spacing: 10) {
            ForEach(movies, id: \.id) { movie in
                StandardHomeMovie(movie: movie)
                    .frame(height: 160)
                    .onTapGesture {
                        self.movieDetailToShow = movie
                    }
            }
        }
    }
    
}

struct SearchResultsGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
    }
}
