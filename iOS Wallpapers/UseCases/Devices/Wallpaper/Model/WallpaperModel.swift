//
//  MainModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 9/1/23.
//

import Foundation

// MARK: - Data structure
struct Wallpaper: Hashable, Identifiable, Codable {
    var id = UUID()
    var name: String
    var image: URL
    var darkImage: URL!
    var hasDark: Bool
}
