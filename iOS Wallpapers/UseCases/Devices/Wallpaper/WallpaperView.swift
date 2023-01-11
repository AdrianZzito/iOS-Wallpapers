//
//  WallpaperView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 7/1/23.
//

import SwiftUI

struct WallpaperView: View {
    
    let name: String
    let wallpaperArray: [Wallpaper]
    @State private var pickerSelection = 0
    @State var showingPicker = false
    
    var body: some View {
        
        VStack {
            
            List {
                
                ForEach(wallpaperArray) { wallpaper in
                    
                    /*
                    if wallpaper.hasDark {
                        Picker("Mode", selection: $pickerSelection) {
                            Text("Light").tag(0)
                            Text("Dark").tag(1)
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 150, alignment: .center)
                    }
                    
                    switch pickerSelection {
                    case 0: WallpaperRowView(image: wallpaper.image, name: wallpaper.name)
                    case 1: WallpaperRowView(image: wallpaper.darkImage, name: wallpaper.name)
                    default: WallpaperRowView(image: wallpaper.image, name: wallpaper.name)
                    }
                    */
                    WallpaperRowView(image: wallpaper.image, name: wallpaper.name)
                    
                }
                .navigationTitle(name)
            }
            
        }
        
    }
}

struct WallpaperView_Previews: PreviewProvider {
    static var previews: some View {
        WallpaperView(name: "iPhone 14", wallpaperArray: iPhone14Wallpapers)
    }
}
