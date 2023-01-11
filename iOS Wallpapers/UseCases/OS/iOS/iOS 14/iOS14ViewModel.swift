//
//  iOS14ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let iOS14Wallpapers: [iOS14Wallpaper] = [
    .init(name: "iOS 14 Light", url: URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1511.WWDC_2020_Warm_Light-414w-896h@3xiphone.png")!, darkUrl: URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1512.WWDC_2020_Warm_Dark-414w-896h@3xiphone.png")!),
    
    .init(name: "iOS 14 Green Light", url: URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1521.WWDC_2020_Cool_Light-414w-896h@3xiphone.png")!, darkUrl: URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1522.WWDC_2020_Cool_Dark-414w-896h@3xiphone.png")!),
    
    .init(name: "iOS 14 Gray Light", url: URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1531.WWDC_2020_Neutral_Light-414w-896h@3xiphone.png")!, darkUrl: URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1532.WWDC_2020_Neutral_Dark-414w-896h@3xiphone.png")!)
]

// MARK: - Data structure
struct iOS14Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
    var darkUrl: URL
}

// MARK: - URLs

// MARK: Default
let defaultLight = URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1511.WWDC_2020_Warm_Light-414w-896h@3xiphone.png")
let defaultDark = URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1512.WWDC_2020_Warm_Dark-414w-896h@3xiphone.png")

// MARK: Green
let greenLight = URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1521.WWDC_2020_Cool_Light-414w-896h@3xiphone.png")
let greenDark = URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1522.WWDC_2020_Cool_Dark-414w-896h@3xiphone.png")

// MARK: Gray
let grayLight = URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1531.WWDC_2020_Neutral_Light-414w-896h@3xiphone.png")
let grayDark = URL(string: "https://wallpapers.ispazio.net/wp-content/uploads/2020/06/1532.WWDC_2020_Neutral_Dark-414w-896h@3xiphone.png")
