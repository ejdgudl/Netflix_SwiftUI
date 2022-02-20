//
//  GlobalHelpers.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/18.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/299")!, categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 1)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 3)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 4, promotionHeadline: "New episodes coming soon")
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 5)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exiting", "Suspenseful", "Sco-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 6, promotionHeadline: "Watch Season 6 Now")

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
