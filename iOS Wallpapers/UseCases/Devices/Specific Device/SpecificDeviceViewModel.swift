//
//  SpecificDeviceViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 6/1/23.
//

import Foundation
import SwiftUI

final class specificDeviceViewModel {
    
    func specificDeviceIconSetter(device: String) -> Image {
        
        switch device {
        case "iPhone 14": return Image(systemName: "iphone").font(.system(size: 25)) as! Image
            
        case "iPhone SE (3rd Generation)", "iPhone SE (2nd Generation)", "iPhone 8", "iPhone 7", "iPhone SE", "iPhone 6s": return Image(systemName: "iphone.gen1").font(.system(size: 25)) as! Image
            
        case "iPhone 13", "iPhone 12", "iPhone 11", "iPhone XR", "iPhone XS", "iPhone X": return Image(systemName: "iphone.gen2").font(.system(size: 25)) as! Image
            
        default: return Image(systemName: "exclamationmark.triangle")
        }
        
    }
    
}
