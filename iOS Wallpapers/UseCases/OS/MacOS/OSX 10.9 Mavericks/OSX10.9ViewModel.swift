//
//  OSX10.9ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_9Wallpapers: [OSX10_9Wallpaper] = [
    .init(name: "OS X 10.9 Mavericks", url: URL(string: "http://512pixels.net/downloads/macos-wallpapers/10-9.jpg")!)
]

// MARK: - Data structure
struct OSX10_9Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
