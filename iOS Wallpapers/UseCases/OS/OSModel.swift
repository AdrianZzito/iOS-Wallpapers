//
//  OSModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 8/1/23.
//

import Foundation


let OSs: [OS] = [
    .init(name: "iOS", osImage: "iOS Logo", osArray: iOS),
    .init(name: "macOS", osImage: "macOS", osArray: macOS),
    .init(name: "Safari", osImage: "safari", osArray: macOS)
]

struct OS: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var osImage: String
    var osArray: [SpecificOS]
}
