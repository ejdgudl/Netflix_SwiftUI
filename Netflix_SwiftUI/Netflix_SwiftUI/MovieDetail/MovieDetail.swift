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
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ZStack {
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
                            if movie.promotionHeadline != nil {
                                Text(movie.promotionHeadline!)
                                    .bold()
                                    .font(.headline)
                            }
                            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                                
                            }
                            CurrentEpisodeInfomation(movie: movie)
                            CastInfo(movie: movie)
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                    
                                }
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: false) {
                                    
                                }
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                    
                                }
                                Spacer()
                            }
                            .padding(.leading, 20)
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                        }
                        .padding(.horizontal, 10)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                if showSeasonPicker {
                    Group {
                        Color.black.opacity(0.9)
                        VStack(spacing: 40) {
                            Spacer()
                            
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { season in
                                Button {
                                    self.selectedSeason = season + 1
                                    self.showSeasonPicker = false
                                } label: {
                                    Text("Season \(season + 1)")
                                        .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                        .bold()
                                        .font(.title2)
                                }

                            }
                            
                            Spacer()
                            Button {
                                self.showSeasonPicker = false
                            } label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            }
                            .padding(.bottom, 30)
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie6)
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Cast: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInfomation: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .font(.subheadline)
                Spacer()
            }
            .padding(.vertical, 4)
            HStack {
                Text(movie.episodeDescriptionDisplay)
                Spacer()
            }
        }
    }
}
