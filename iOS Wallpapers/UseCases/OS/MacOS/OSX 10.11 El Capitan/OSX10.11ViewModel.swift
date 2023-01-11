//
//  OSX10.11ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let OSX10_11Wallpapers: [OSX10_11Wallpaper] = [
    .init(name: "OS X 10.11 El Capitan", url: URL(string: "https://www.iclarified.com/images/news/50663/238567/238567.jpg")!)
]

// MARK: - Data structure
struct OSX10_11Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
