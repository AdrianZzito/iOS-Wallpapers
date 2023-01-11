//
//  ContentView.swift
//  Apple Wallpapers
//
//  Created by Adrián Castilla on 22/12/22.
//

import SwiftUI

struct ContentView: View {
    
    public var alertMessage: String = "Full resolution image saved to photo library"
    
    var body: some View {
        
        TabView {
            DeviceView().tabItem({
                    Label("Devices", systemImage: "macbook.and.iphone")
                })
            
            OSView().tabItem({
                Label("Operating Systems", systemImage: "apps.iphone")
            })
            
            DailyRandomView().tabItem({
                Label("Random", systemImage: "dice")
            })
            
            FavoritesView().tabItem({
                Label("Favorites", systemImage: "star.fill")
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
