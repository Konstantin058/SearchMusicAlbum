//
//  4.swift
//  SearchMusicsAlbums
//
//  Created by Константин Евсюков on 02.11.2022.
//

import Foundation

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
