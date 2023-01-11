//
//  OSX10.7ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_7Wallpapers: [OSX10_7Wallpaper] = [
    .init(name: "OS X 10.7 Lion", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-7.png")!)
]

// MARK: - Data structure
struct OSX10_7Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
