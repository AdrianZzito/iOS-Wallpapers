//
//  DeviceViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 6/1/23.
//

import Foundation
import SwiftUI

final class DeviceViewModel {
    
    func currentDeviceChecker(device: String) -> [Wallpaper] {
        
        switch device {
            
        case "iPhone 14": return iPhone14Wallpapers
            
        case "iPhone SE (3rd Generation)": return iPhoneSE3Wallpapers
            
        case "iPhone 13": return iPhone13Wallpapers
            
        case "iPhone 12": return iPhone12Wallpapers
            
        case "iPhone SE (2nd Generation)": return iPhoneSE2Wallpapers
            
        case "iPhone 8", "iPhone 7", "iPhone SE", "iPhone 6s": return iPhoneSE2Wallpapers
            
        case "iPhone 11", "iPhone XR", "iPhone XS", "iPhone X": return iPhoneSE2Wallpapers
            
        default: return iPhone14Wallpapers
            
        }
    }
    
    var imageName: String = ""
    
    func deviceImageSetter(device: String) {
        
        switch device {
        case "iPhone 14": imageName = "iPhone"
            
        case "iPhone SE (3rd Generation)", "iPhone SE (2nd Generation)", "iPhone 8", "iPhone 7", "iPhone SE", "iPhone 6s": imageName = "iPhone.gen1"
            
        case "iPhone 13", "iPhone 12", "iPhone 11", "iPhone XR", "iPhone XS", "iPhone X": imageName = "iPhone.gen2"
            
        default: imageName = "exclamationmark.triangle"
            
        }
        
    }
    
}
