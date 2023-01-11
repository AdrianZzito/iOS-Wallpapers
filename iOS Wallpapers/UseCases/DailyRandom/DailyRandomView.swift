//
//  DailyRandomView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 3/1/23.
//

import SwiftUI
import Kingfisher

struct DailyRandomView: View {
    
    @StateObject var dailyRandomViewModel = DailyRandomViewModel()
    
    var body: some View {
        
        if let random = allUrls.randomElement() {
            
            NavigationStack {
                
                List {
                    
                    VStack {
                        
                        WallpaperRowView(image: random.url, name: random.name)
                        
                        /*
                        Text("Next random will be available in: ")
                            .bold()
                            .padding()
                        */
                        
                    }
                }
                .navigationTitle("Random")
            }
        }
        
    }
}

struct DailyRandomView_Previews: PreviewProvider {
    static var previews: some View {
        DailyRandomView()
    }
}
