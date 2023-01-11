//
//  macOSViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import Foundation
import SwiftUI

let MacOSVersions: [MacOS] = [
    .init(name: "macOS 13 Ventura", image: "macOS 13 Logo"),
    .init(name: "macOS 12 Monterey", image: "macOS 12 Logo"),
    .init(name: "macOS 11 Big Sur", image: "macOS 11 Logo"),
    .init(name: "macOS 10.15 Catalina", image: "macOS 10.15 Logo"),
    .init(name: "macOS 10.14 Mojave", image: "macOS 10.14 Logo"),
    .init(name: "macOS 10.13 High Sierra", image: "macOS 10.13 Logo"),
    .init(name: "macOS 10.12 Sierra", image: "macOS 10.12 Logo"),
    .init(name: "OS X 10.11 El Capitan", image: "OS X 10.11 Logo"),
    .init(name: "OS X 10.10 Yosemite", image: "OS X 10.10 Logo"),
    .init(name: "OS X 10.9 Mavericks", image: "OS X 10.9 Logo"),
    .init(name: "OS X 10.8 Mountain Lion", image: "OS X 10.8 Logo"),
    .init(name: "OS X 10.7 Lion", image: "OS X 10.7 Logo"),
    .init(name: "OS X 10.6 Snow Leopard", image: "OS X 10.6 Logo"),
    .init(name: "OS X 10.5 Leopard", image: "macOS"),
    .init(name: "OS X 10.4 Tiger", image: "macOS"),
    .init(name: "OS X 10.3 Panther", image: "macOS"),
    .init(name: "OS X 10.2 Jaguar", image: "macOS"),
    .init(name: "OS X 10.0 Cheetah & 10.1 Puma", image: "macOS")
]

struct MacOS: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
}
