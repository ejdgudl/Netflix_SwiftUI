//
//  MovieDetail.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/20.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }
                .padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: true) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadline(movie: movie)
                    }
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1)
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text("MOVIE YEAR")
            Text("RATING")
            Text("seasons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
