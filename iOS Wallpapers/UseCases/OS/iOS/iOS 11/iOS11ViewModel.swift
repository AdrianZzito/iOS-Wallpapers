//
//  iOS11ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper Array
let iOS11Wallpapers: [iOS11Wallpaper] = [
    .init(name: "iOS 11 Wallpaper", url: URL(string: "https://w0.peakpx.com/wallpaper/988/693/HD-wallpaper-ios-11-apple-iso-ocean.jpg")!)
]

// MARK: - Data structure
struct iOS11Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
}
