//
//  OSX10.5ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_5Wallpapers: [OSX10_5Wallpaper] = [
    .init(name: "OS X 10.5 Leopard", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-5.png")!)
]

// MARK: - Data structure
struct OSX10_5Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
