//
//  iOS13ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let iOS13Wallpapers: [iOS13Wallpaper] = [
    .init(name: "iOS 13 Orange Light"),
    .init(name: "iOS 13 Blue Light"),
    .init(name: "iOS 13 Green Light"),
    .init(name: "iOS 13 Gray Light")
]

// MARK: - Data structure
struct iOS13Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
}

// MARK: - URLs

// MARK: Orange bubbles
let iOS13orangeLightUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_RedWhite_FlareZephyr.jpeg")
let iOS13orangeDarkUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_RedDark_FlareZephyr.jpeg")

// MARK: Blue bubbles
let iOS13blueLightUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_BlueWhite_FlareZephyr.jpeg")
let iOS13blueDarkUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_BlueDark_FlareZephyr.jpeg")

// MARK: Green bubbles
let iOS13greenLightUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_GreenWhite_FlareZephyr.jpeg")
let iOS13greenDarkUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_GreenDark_FlareZephyr.jpeg")

// MARK: Gray bubbles
let iOS13grayLightUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_GreyWhite_FlareZephyr.jpeg")
let iOS13grayDarkUrl = URL(string: "https://media.idownloadblog.com/wp-content/uploads/2019/06/iOS13_GreyDark_FlareZephyr.jpeg")
