//
//  MacOSView.swift
//  Apple Wallpapers
//
//  Created by Adrián Castilla on 27/12/22.
//

import SwiftUI

struct MacOSView: View {
    var body: some View {
        
        List(MacOSVersions) { macos in
            
            HStack {
                
                Image(macos.image)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .trailing)
                    .clipped()
                
                NavigationLink(macos.name, value: macos)
            }
            
        }
        .navigationDestination(for: MacOS.self) { macos in
            switch macos.name {
            case "macOS 13 Ventura": macOS13View()
            case "macOS 12 Monterey": macOS12View()
            case "macOS 11 Big Sur": macOS11View()
            case "macOS 10.15 Catalina": macOS10_15View()
            case "macOS 10.14 Mojave": macOS10_14View()
            case "macOS 10.13 High Sierra": macOS10_13View()
            case "macOS 10.12 Sierra": macOS10_12View()
            case "OS X 10.11 El Capitan": OSX10_11View()
            case "OS X 10.10 Yosemite": OSX10_10View()
            case "OS X 10.9 Mavericks": OSX10_9View()
            case "OS X 10.8 Mountain Lion": OSX10_8View()
            case "OS X 10.7 Lion": OSX10_7View()
            case "OS X 10.6 Snow Leopard": OSX10_6View()
            case "OS X 10.5 Leopard": OSX10_5View()
            case "OS X 10.4 Tiger": OSX10_4View()
            case "OS X 10.3 Panther": OSX10_3View()
            case "OS X 10.2 Jaguar": OSX10_2View()
            case "OS X 10.0 Cheetah & 10.1 Puma": OSX10_0_10_1View()
            default: Text("uncoded")
            }
        }
        .navigationTitle("macOS")
    }
}

struct MacOSView_Previews: PreviewProvider {
    static var previews: some View {
        MacOSView()
    }
}
