//
//  SpecificDeviceModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 5/1/23.
//

import Foundation

// MARK: - iPhone
let iPhone: [SpecificDevice] = [
    .init(name: "iPhone 14", wallpaperArray: iPhone14Wallpapers),
    .init(name: "iPhone SE (3rd Generation)", wallpaperArray: iPhoneSE3Wallpapers),
    .init(name: "iPhone 13", wallpaperArray: iPhone13Wallpapers),
    .init(name: "iPhone 12", wallpaperArray: iPhone12Wallpapers),
    .init(name: "iPhone SE (2nd Generation)", wallpaperArray: iPhoneSE2Wallpapers),
    .init(name: "iPhone 11", wallpaperArray: iPhone11Wallpapers),
    .init(name: "iPhone XR", wallpaperArray: iPhoneXRWallpapers),
    .init(name: "iPhone XS", wallpaperArray: iPhoneXSWallpapers),
    .init(name: "iPhone X", wallpaperArray: iPhoneXWallpapers),
    .init(name: "iPhone 8", wallpaperArray: iPhone8Wallpapers),
    .init(name: "iPhone 7", wallpaperArray: iPhone7Wallpapers),
    .init(name: "iPhone SE", wallpaperArray: iPhoneSEWallpapers),
    .init(name: "iPhone 6s", wallpaperArray: iPhone6sWallpapers),
    //.init(name: "iPhone 6"),
    //.init(name: "iPhone 5"),
    //.init(name: "iPhone 4"),
    //.init(name: "iPhone 3G"),
    //.init(name: "iPhone"),
]

// MARK: - iPad
let iPad: [SpecificDevice] = [
    .init(name: "iPad", wallpaperArray: iPad10Wallpapers),
    .init(name: "iPad Mini", wallpaperArray: iPadMini6Wallpapers),
    .init(name: "iPad Air", wallpaperArray: iPadAirWallpapers),
    .init(name: "iPad Pro", wallpaperArray: iPadProWallpapers),
]

// MARK: - Mac
let Mac: [SpecificDevice] = [
    .init(name: "iMac", wallpaperArray: iMacWallpapers),
    .init(name: "MacBook", wallpaperArray: MacBookWallpapers)
]

// MARK: - Displays
let Displays: [SpecificDevice] = [
    .init(name: "Pro Display XDR", wallpaperArray: displaysWallpapers),
    .init(name: "Studio Display", wallpaperArray: displaysWallpapers)
]

// MARK: - Data structure
struct SpecificDevice: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var wallpaperArray: [Wallpaper]
}
