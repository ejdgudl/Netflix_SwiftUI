//
//  Episode.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/20.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
