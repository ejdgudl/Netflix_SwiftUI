//
//  GlobalHelpers.swift
//  Netflix_SwiftUI
//
//  Created by κΉλν on 2022/02/18.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!
var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleITrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(name: "Beginnings and Endings",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/102",
                       description: "Six months after the disappeaance, the police form a task force In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       vedioURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/102",
                       description: "Clausen and Chalotte interview Regina. The Stranger takes hannah to 1987, where Claudia han an unnerving encounter and egon visits an old nemesis.",
                       length: 54,
                       vedioURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/102",
                       description: "In 1954 a missing helge returns, but he'll only speak to noah. in 1987, claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 56,
                       vedioURL: exampleVideoURL)
let episode4 = Episode(name: "Beginnings",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/107",
                       description: "Six months after the disappeaance, the police form a task force In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       vedioURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/106",
                       description: "Clausen and Chalotte interview Regina. The Stranger takes hannah to 1987, where Claudia han an unnerving encounter and egon visits an old nemesis.",
                       length: 54,
                       vedioURL: exampleVideoURL)
let episode6 = Episode(name: "Ghosts",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/105",
                       description: "In 1954 a missing helge returns, but he'll only speak to noah. in 1987, claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 56,
                       vedioURL: exampleVideoURL)
var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]
let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/299")!,
    categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    episodes: allExampleEpisodes,
    defaultEPisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6],
    trailers: exampleITrailers,
    previewImageName: "darkPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    promotionHeadline: "Best Rated Show",
    defaultEPisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleITrailers,
    previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEPisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleITrailers,
    previewImageName: "dirtyJhonPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    promotionHeadline: "New episodes coming soon",
    defaultEPisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleITrailers,
    previewImageName: "arrestedDevPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEPisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleITrailers,
    previewImageName: "whiteLinesPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    promotionHeadline: "Watch Season 6 Now",
    defaultEPisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleITrailers,
    previewImageName: "ozarkPreview",
    previewVideoURL: exampleVideoURL)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappeaance, the police form a task force In 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
