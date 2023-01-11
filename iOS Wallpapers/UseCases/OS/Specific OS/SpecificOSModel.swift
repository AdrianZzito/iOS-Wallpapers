//
//  SpecificOSModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 8/1/23.
//

import Foundation

// MARK: - iOS
let iOS: [SpecificOS] = [
    .init(name: "iOS 16", osImage: "iOS 16 Logo", wallpaperArray: iOS16),
    .init(name: "iOS 15", osImage: "iOS 15 Logo", wallpaperArray: iOS15),
    .init(name: "iOS 14", osImage: "iOS 14 Logo", wallpaperArray: iOS14),
    .init(name: "iOS 13", osImage: "iOS 13 Logo", wallpaperArray: iOS13),
    .init(name: "iOS 12", osImage: "iOS 12 Logo", wallpaperArray: iOS12),
    .init(name: "iOS 11", osImage: "iOS 11 Logo", wallpaperArray: iOS11),
    .init(name: "iOS 10", osImage: "iOS 10 Logo", wallpaperArray: iOS10),
    .init(name: "iOS 9", osImage: "iOS 9 Logo", wallpaperArray: iOS9)
]

// MARK: - macOS
let macOS: [SpecificOS] = [
    .init(name: "macOS 13 Ventura", osImage: "macOS 13 Logo", wallpaperArray: macOS13Ventura),
    .init(name: "macOS 12 Monterey", osImage: "macOS 12 Logo", wallpaperArray: macOS12Monterey),
    .init(name: "macOS 11 Big Sur", osImage: "macOS 11 Logo", wallpaperArray: macOS11BigSur),
    .init(name: "macOS 10.15 Catalina", osImage: "macOS 10.15 Logo", wallpaperArray: macOS10_15Catalina),
    .init(name: "macOS 10.14 Mojave", osImage: "macOS 10.14 Logo", wallpaperArray: macOS10_14Mojave),
    .init(name: "macOS 10.13 High Sierra", osImage: "macOS 10.13 Logo", wallpaperArray: macOS10_13HighSierra),
    .init(name: "macOS 10.12 Sierra", osImage: "macOS 10.12 Logo", wallpaperArray: macOS10_12Sierra),
    .init(name: "OS X 10.11 El Capitan", osImage: "OS X 10.11 Logo", wallpaperArray: OSX10_11ElCapitan),
    .init(name: "OS X 10.10 Yosemite", osImage: "OS X 10.10 Logo", wallpaperArray: OSX10_10Yosemite),
    .init(name: "OS X 10.9 Mavericks", osImage: "OS X 10.9 Logo", wallpaperArray: OSX10_9Mavericks),
    .init(name: "OS X 10.8 Mountain Lion", osImage: "OS X 10.8 Logo", wallpaperArray: OSX10_8MountainLion),
    .init(name: "OS X 10.7 Lion", osImage: "OS X 10.7 Logo", wallpaperArray: OSX10_7Lion),
    .init(name: "OS X 10.6 Snow Leopard", osImage: "OS X 10.6 Logo", wallpaperArray: OSX10_6SnowLeopard),
    .init(name: "OS X 10.5 Leopard", osImage: "macOS", wallpaperArray: OSX10_5Leopard),
    .init(name: "OS X 10.4 Tiger", osImage: "macOS", wallpaperArray: OSX10_4Tiger),
    .init(name: "OS X 10.3 Panther", osImage: "macOS", wallpaperArray: OSX10_3Panther),
    .init(name: "OS X 10.2 Jaguar", osImage: "macOS", wallpaperArray: OSX10_2Jaguar),
    .init(name: "OS X 10.0 Cheetah & 10.1 Puma", osImage: "macOS", wallpaperArray: OSX10),
]

// MARK: - Safari
// TODO //

struct SpecificOS: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var osImage: String
    var wallpaperArray: [Wallpaper]
}
