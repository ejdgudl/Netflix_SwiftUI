//
//  TopMovieReview.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/18.
//

import SwiftUI
import Kingfisher

struct TopMovieReview: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(
                        text: "My List"
                        , isOnImage: "checkmark"
                        , isOffImage: "plus"
                        , isOn: true) {
                            
                        }
                    Spacer()
                    WhiteButton(text: "play", imageName: "play.fill") {
                        
                    }.frame(width: 120)
                    Spacer()
                    SmallVerticalButton(
                        text: "Info"
                        , isOnImage: "info.circle"
                        , isOffImage: "info.circle"
                        , isOn: true) {
                            
                        }
                    Spacer()
                }
            }
            .background(LinearGradient.blackOpacityGradient)
            .padding(.top, 250)
        }
        .foregroundColor(.white)
    }
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
}

struct TopMovieReview_Previews: PreviewProvider {
    static var previews: some View {
        TopMovieReview(movie: exampleMovie1)
    }
}
