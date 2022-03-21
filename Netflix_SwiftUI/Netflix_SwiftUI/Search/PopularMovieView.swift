//
//  PopularMovieView.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/03/22.
//

import SwiftUI
import Kingfisher

struct PopularMovieView: View {
    @Binding var movieDetailShow: Movie?
    
    var movie: Movie
    var body: some View {
        GeometryReader { proxy in
            HStack {
                KFImage(movie.thumbnailURL)
                    .resizable()
                    .frame(width: proxy.size.width / 3)
                    .padding(.leading, 3)
                Text(movie.name)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrowtriangle.right.fill")
                }
                .padding(.trailing, 20)
            }
            .foregroundColor(.white)
            .onTapGesture {
                self.movieDetailShow = movie
            }
        }
    }
}

struct PopularMovieView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PopularMovieView(movieDetailShow: .constant(nil), movie: exampleMovie1)
                .frame(height: 75)
        }
    }
}
