//
//  Movie.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/18.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
}
