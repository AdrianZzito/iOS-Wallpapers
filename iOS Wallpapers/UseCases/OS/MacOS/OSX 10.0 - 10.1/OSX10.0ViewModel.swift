//
//  OSX10.0ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10Wallpapers: [OSX10Wallpaper] = [
    .init(name: "OS X 10.0 & 10.1", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-0_10.1.png")!)
]

// MARK: - Data structure
struct OSX10Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
