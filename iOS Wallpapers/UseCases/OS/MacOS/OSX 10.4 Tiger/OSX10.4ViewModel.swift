//
//  OSX10.4ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_4Wallpapers: [OSX10_4Wallpaper] = [
    .init(name: "OS X 10.4 Tiger", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-4.png")!)
]

// MARK: - Data structure
struct OSX10_4Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
