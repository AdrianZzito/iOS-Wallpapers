//
//  SafariViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

struct SafariWallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
}

let SafariWallpapers: [SafariWallpaper] = [
    .init(name: "Safari Blue"),
    .init(name: "Safari Orange"),
    .init(name: "Safari Pink")
]

let safariPinkUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/08/Safari-Wallpaper-AR72014-iDownloadBlog-iPad-Desktop-Pink-.jpeg")

let safariBlueUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/08/Safari-Wallpaper-AR72014-iDownloadBlog-iPad-Desktop-Blue.jpeg")

let safariOrangeUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/08/Safari-Wallpaper-AR72014-iDownloadBlog-iPad-Desktop-Orange.jpeg")
