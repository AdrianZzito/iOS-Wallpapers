//
//  macOS12ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let macOS12Wallpapers: [macOS12Wallpaper] = [
    .init(name: "macOS 12 Monterey", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/06/macOS-Monterey-wallpaper-Light.jpg")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/06/macOS-Monterey-wallpaper-Dark.jpg")!)
]

// MARK: - Data structure
struct macOS12Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
    var darkUrl: URL
}
