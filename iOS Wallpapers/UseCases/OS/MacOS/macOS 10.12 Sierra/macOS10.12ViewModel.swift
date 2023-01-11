//
//  macOS10.12ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let macOS10_12Wallpapers: [macOS10_12Wallpaper] = [
    .init(name: "macOS 10.12 Sierra", url: URL(string: "https://512pixels.net/downloads/macos-wallpapers/10-12.jpg")!)
]

// MARK: - Data structure
struct macOS10_12Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
