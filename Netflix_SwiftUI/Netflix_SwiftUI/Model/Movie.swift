//
//  Movie.swift
//  Netflix_SwiftUI
//
//  Created by κΉλν on 2022/02/18.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    var genre: HomeGenre = .allGenres
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    var episodes: [Episode]?
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    var promotionHeadline: String?
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEPisodeInfo: CurrentEpisodeInfo
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEPisodeInfo.season):E\(defaultEPisodeInfo.episode) \(defaultEPisodeInfo.episodeName)"
        }
    }
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEPisodeInfo.description
        }
    }
    var creators: String
    var cast: String
    var moreLikeThisMovies: [Movie]
    var trailers: [Trailer]
    var previewImageName: String
    var previewVideoURL: URL?
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
