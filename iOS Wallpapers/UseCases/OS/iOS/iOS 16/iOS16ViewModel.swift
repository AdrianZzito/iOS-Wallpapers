//
//  iOS16ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Wallpaper array
let iOS16Wallpapers: [iOS16Wallpaper] = [
    .init(
        name: "iOS 16 Light",
        
        url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/06/7411.WWDC_2022_Light-1024w-1366h@2xipad.jpeg?quality=82&strip=all")!,
        
        darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/06/7412.WWDC_2022_Dark-1024w-1366h@2xipad.jpeg?quality=82&strip=all")!)
]

// MARK: - Data structure
struct iOS16Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var url: URL
    var darkUrl: URL
}
