//
//  OSX10.10ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_10Wallpapers: [OSX10_10Wallpaper] = [
    .init(name: "OS X 10.10 Yosemite", url: URL(string: "http://512pixels.net/downloads/macos-wallpapers/10-10.jpg")!)
]

// MARK: - Data structure
struct OSX10_10Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
