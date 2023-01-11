//
//  DeviceModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 5/1/23.
//

import Foundation

let devices: [Device] = [
    .init(name: "iPhone", deviceArray: iPhone),
    .init(name: "iPad", deviceArray: iPad),
    .init(name: "Mac", deviceArray: Mac),
    .init(name: "Displays", deviceArray: Displays)
]

struct Device: Hashable, Identifiable {
    let id = UUID()
    var name: String
    var deviceArray: [SpecificDevice]
}
