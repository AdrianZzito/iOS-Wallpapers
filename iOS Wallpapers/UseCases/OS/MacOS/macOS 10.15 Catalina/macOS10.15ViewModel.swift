//
//  macOS10.15ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let macOS10_15Wallpapers: [macOS10_15Wallpaper] = [
    .init(name: "macOS 10.15 Catalina", url: URL(string: "https://cdn.osxdaily.com/wp-content/uploads/2019/06/macOS-Catalina-Light-mode.jpg")!, darkUrl: URL(string: "https://cdn.osxdaily.com/wp-content/uploads/2019/06/macOS-Catalina-Dark-Mode.jpg")!)
]

// MARK: - Data structure
struct macOS10_15Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
    var darkUrl: URL
}
