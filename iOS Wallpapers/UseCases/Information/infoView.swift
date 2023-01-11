//
//  infoView.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 28/12/22.
//

import SwiftUI

struct infoView: View {
    
    var body: some View {
        
        VStack {
            Image("iOSWallpapersIcon")
                .resizable()
                .cornerRadius(30)
                .frame(width: 150, height: 150)
                .shadow(radius: 5).padding()
            
            Text("Official Wallpapers")
                .font(.title)
                .bold()
            
            Text("Version: \(VersionDetector.version())")
            
            Text("Copyright 2022-2023 Antonio Castilla,\nAll Rights Reserved.").frame(alignment: .center)
                .padding()
            
            Text("Apple, Apple logo, Mac, iPhone,\niPad and iPhone are trademarks\nof Apple Inc.")
            
            Spacer()
            
            Text("Made by an Apple fan, for Apple fans.")
                .bold()
                .padding()
            
        }
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
