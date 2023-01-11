//
//  OSX10.8ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_8Wallpapers: [OSX10_8Wallpaper] = [
    .init(name: "OS X 10.8 Mountain Lion", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-8.jpg")!)
]

// MARK: - Data structure
struct OSX10_8Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
