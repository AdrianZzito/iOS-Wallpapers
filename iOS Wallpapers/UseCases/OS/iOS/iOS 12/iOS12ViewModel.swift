//
//  iOS12ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let iOS12Wallpapers: [iOS12Wallpaper] = [
    .init(name: "iOS 12 Wallpaper", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/06/iOS-12-wallpaper-iPad.jpg")!)
]

// MARK: - Data structure
struct iOS12Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
