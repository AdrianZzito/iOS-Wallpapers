//
//  macOS11ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let macOS11Wallpapers: [macOS11Wallpaper] = [
    .init(name: "macOS 11 Big Sur"),
    .init(name: "macOS 11 Big Sur Mountains")
]

// MARK: - Data structure
struct macOS11Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
}

// MARK: - URLs

// MARK: Default
let macOS11DefaultLight = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/06/macOS-Big-Sur-Vector-Wave-Wallpaper-iDownloadBlog.jpg")
let macOS11DefaultDark = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/06/macOS-Big-Sur-Vector-Wave-Dark-Wallpaper-iDownloadBlog.jpg")

// MARK: Mountains
let macOS11MountainsLight = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/06/macOS-Big-Sur-Daylight-Wallpaper-iDownloadBlog.jpg")
let macOS11MountainsDark = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/06/macOS-Big-Sur-Daylight-Wallpaper-iDownloadBlog-2.jpg")
