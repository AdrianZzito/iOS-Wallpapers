//
//  OSX10.2ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 1/1/23.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_2Wallpapers: [OSX10_2Wallpaper] = [
    .init(name: "OS X 10.2 Jaguar", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-2.png")!)
]

// MARK: - Data structure
struct OSX10_2Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
