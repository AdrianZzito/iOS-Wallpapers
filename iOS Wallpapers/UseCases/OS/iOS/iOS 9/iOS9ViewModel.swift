//
//  iOS9ViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation

// MARK: - Array of devices
let iOS9Wallpapers: [iOS9Wallpaper] = [
    .init(name: "iOS 9 Blue Landscape"),
    .init(name: "iOS 9 Yellow Landscape"),
    .init(name: "iOS 9 Brown Landscape"),
    .init(name: "iOS 9 Blue Planet"),
    .init(name: "iOS 9 White Planet"),
    .init(name: "iOS 9 Orange Planet"),
    .init(name: "iOS 9 Green Splash"),
    .init(name: "iOS 9 Pink Splash"),
    .init(name: "iOS 9 Yellow Splash"),
    .init(name: "iOS 9 Orange Feathers"),
    .init(name: "iOS 9 Gray Feathers"),
    .init(name: "iOS 9 Blue Feathers"),
    .init(name: "iOS 9 Green Plant"),
    .init(name: "iOS 9 Purple Plant"),
    .init(name: "iOS 9 Yellow Plant"),
]

// MARK: - Data Strcuture
struct iOS9Wallpaper: Hashable, Identifiable {
    var id = UUID()
    var name: String
}

// MARK: - URLs

// MARK: Landscapes
let blueLandscapeUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-4.png")
let brownLandscapeUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-11.png")
let yellowLandscapeUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-3.png")

// MARK: Planets
let orangePlanetUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-5.png")
let whitePlanetUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-6.png")
let bluePlanetUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-7.png")

// MARK: Splashes
let greenSplashUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-10.png")
let pinkSplashUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-8.png")
let yellowSplashUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-9.png")

// MARK: Feathers
let orangeFeathersUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-2.png")
let grayFeathersUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-13.png")
let blueFeathersUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-12.png")

// MARK: Plants
let purplePlantUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-14.png")
let yellowPlantUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-15.png")
let greenPlantUrl = URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2015/08/ios-9-wallpapers-16.png")
