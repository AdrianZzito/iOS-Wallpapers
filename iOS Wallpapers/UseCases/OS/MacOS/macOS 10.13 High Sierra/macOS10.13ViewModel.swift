//
//  macOS10.13ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let macOS10_13Wallpapers: [macOS10_13Wallpaper] = [
    .init(name: "macOS 10.13 High Sierra", url: URL(string: "https://i.imgur.com/icu9yIJ.jpg")!)
]

// MARK: - Data structure
struct macOS10_13Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
