//
//  Trailer.swift
//  Netflix_SwiftUI
//
//  Created by κΉλν on 2022/02/23.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
}
