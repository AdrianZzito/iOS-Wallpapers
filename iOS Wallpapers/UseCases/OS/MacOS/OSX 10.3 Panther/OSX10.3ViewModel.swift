//
//  OSX10.3ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_3Wallpapers: [OSX10_3Wallpaper] = [
    .init(name: "OS X 10.3 Panther", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-3.png")!)
]

// MARK: - Data structure
struct OSX10_3Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
