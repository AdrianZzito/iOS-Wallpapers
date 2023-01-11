//
//  iOS15ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let iOS15Wallpapers: [iOS15Wallpaper] = [
    .init(name: "iOS 15 Light", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/06/ios-15-iPad-wallpaper-from-ispazio.jpg")!, darkUrl: URL(string:"https://media.idownloadblog.com/wp-content/uploads/2021/06/ios-15-iPad-wallpaper-from-ispazio-dark.jpg")!)
]

// MARK: - Data structure
struct iOS15Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
    var darkUrl: URL
}
