//
//  macOS13ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
var macOS13Wallpapers: [macOS13Wallpaper] = [
    .init(name: "macOS 13 Ventura", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/06/macOS-Graphic-Light.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/06/macOS-Graphic-Dark.jpg?quality=82&strip=all")!)
]

// MARK: - Data structure
struct macOS13Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
    var darkUrl: URL
}
