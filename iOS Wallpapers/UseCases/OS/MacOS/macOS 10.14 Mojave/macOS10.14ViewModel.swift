//
//  macOS10.14ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let macOS10_14Wallpapers: [macOS10_14Wallpaper] = [
    .init(name: "macOS 10.14 Mojave", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/06/macOS-Mojave-Day-wallpaper.jpg")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/06/macOS-Mojave-Night-wallpaper.jpg")!)
]

// MARK: - Data structure
struct macOS10_14Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
    var darkUrl: URL
}
