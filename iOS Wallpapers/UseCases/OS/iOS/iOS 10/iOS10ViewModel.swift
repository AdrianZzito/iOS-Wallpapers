//
//  iOS10ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Array of wallpapers
let iOS10Wallpapers: [iOS10Wallpaper] = [
    .init(name: "iOS 10 Wallpaper", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2016/06/iOS-10-wallpaper-for-iPad-idownloadblog.png")!)
]

// MARK: - Data structure
struct iOS10Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
