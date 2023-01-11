//
//  SaveImage.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation
import Kingfisher
import SwiftUI

let downloader = ImageDownloader.default

func saveImage(url: URL) {
    downloader.downloadImage(with: url) { result in
        switch result {
        case .success(let value):
            UIImageWriteToSavedPhotosAlbum(value.image, nil, nil, nil)
        case .failure(let error):
            print(error)
        }
    }
}


