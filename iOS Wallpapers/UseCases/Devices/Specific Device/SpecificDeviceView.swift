//
//  SpecificDeviceView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 5/1/23.
//

import SwiftUI

struct SpecificDeviceView: View {
    
    let name: String
    let specificDeviceArray: [SpecificDevice]
    
    var body: some View {
        
        List(specificDeviceArray) { specificDevice in
            
            HStack {
                
                switch specificDevice.name {
                    
                // MARK: - iPhone icon setter
                case "iPhone 14": Image(systemName: "iphone").font(.system(size: 25))
                    
                case "iPhone SE (3rd Generation)", "iPhone SE (2nd Generation)", "iPhone 8", "iPhone 7", "iPhone SE", "iPhone 6s": Image(systemName: "iphone.gen1").font(.system(size: 25))
                    
                case "iPhone 13", "iPhone 12", "iPhone 11", "iPhone XR", "iPhone XS", "iPhone X": Image(systemName: "iphone.gen2").font(.system(size: 25))
                    
                // MARK: - iPad icon setter
                case "iPad": Image(systemName: "ipad").font(.system(size: 25))
                    
                case "iPad Mini": Image(systemName: "ipad").font(.system(size: 20))
                    
                case "iPad Air": Image(systemName: "ipad").font(.system(size: 25))
                    
                case "iPad Pro": Image(systemName: "ipad").font(.system(size: 25))
                    
                // MARK: - Mac icon setter
                case "iMac": Image(systemName: "desktopcomputer").font(.system(size: 25))
                    
                case "MacBook": Image(systemName: "laptopcomputer").font(.system(size: 25))
                    
                // MARK: - Display icon setter
                case "Pro Display XDR": Image(systemName: "display").font(.system(size: 25))
                case "Studio Display": Image(systemName: "display").font(.system(size: 25))
                   
                default: Image(systemName: "exclamationmark.triangle")
                }
                NavigationLink(specificDevice.name, value: specificDevice)
            }
            
        }
        .navigationDestination(for: SpecificDevice.self) { specificDevice in
            WallpaperView(name: specificDevice.name, wallpaperArray: specificDevice.wallpaperArray)
        }
        .navigationTitle(name)
    }
}

struct SpecificDeviceView_Previews: PreviewProvider {
    static var previews: some View {
        SpecificDeviceView(name: "iPhone", specificDeviceArray: iPhone)
    }
}
