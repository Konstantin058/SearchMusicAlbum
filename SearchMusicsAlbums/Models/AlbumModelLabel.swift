//
//  AlbumModelLabel.swift
//  SearchMusicsAlbums
//
//  Created by Константин Евсюков on 03.11.2022.
//

import Foundation
import UIKit

enum AlbumModelLabel: String {
    case albumName = "Name album"
    case artistName = "Name artist"
    case releaseDate = "Release date"
    case trackCount = "10 tracks"
}

class AlbumModelLabelType: UILabel {
    
    private let type: AlbumModelLabel
    
    init(type: AlbumModelLabel) {
        self.type = type
        super.init(frame: .zero)
        createLabels()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension AlbumModelLabelType {
    
    func createLabels() {
        text = type.rawValue
        font = .systemFont(ofSize: 16)
        
        if type == .albumName {
            font = .systemFont(ofSize: 20)
            numberOfLines = 0
        }
    }
}
