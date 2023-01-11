//
//  OSX10.6ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_6Wallpapers: [OSX10_6Wallpaper] = [
    .init(name: "OS X 10.6 Snow Leopard", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-6.png")!)
]

// MARK: - Data structure
struct OSX10_6Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
