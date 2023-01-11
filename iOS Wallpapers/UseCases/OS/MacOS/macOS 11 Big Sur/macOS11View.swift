//
//  macOS11View.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 28/12/22.
//

import SwiftUI
import Kingfisher

struct macOS11View: View {
    
    @State private var showingImageAlert = false
    @State private var pickerSelection = 0
    
    var body: some View {
        
        VStack {
            
            Picker("Mode", selection: $pickerSelection) {
                Text("Light").tag(0)
                Text("Dark").tag(1)
            }
            .pickerStyle(.segmented)
            .frame(width: 150)
            
            List {
                ForEach(macOS11Wallpapers) { wallpaper in
                    VStack {
                        switch pickerSelection {
                        case 0:
                            switch wallpaper.name {
                            case "macOS 11 Big Sur":
                                KFImage(macOS11DefaultLight)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            case "macOS 11 Big Sur Mountains":
                                KFImage(macOS11MountainsLight)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                            default: Text("uncoded")
                            }
                            
                        case 1:
                            switch wallpaper.name {
                            case "macOS 11 Big Sur":
                                KFImage(macOS11DefaultDark)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            case "macOS 11 Big Sur Mountains":
                                KFImage(macOS11MountainsDark)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                            default: Text("uncoded")
                            }
                            
                        default: Text("uncoded image")
                        }
                        
                        Text(wallpaper.name)
                            .font(.title2)
                        
                        Button("Save") {
                            switch pickerSelection {
                            case 0:
                                switch wallpaper.name {
                                case "macOS 11 Big Sur": saveImage(url: macOS11DefaultLight!)
                                case "macOS 11 Big Sur Mountains": saveImage(url: macOS11MountainsLight!)
                                default: print("uncoded image")
                                }
                            case 1:
                                switch wallpaper.name {
                                case "macOS 11 Big Sur": saveImage(url: macOS11DefaultDark!)
                                case "macOS 11 Big Sur Mountains": saveImage(url: macOS11MountainsDark!)
                                default: print("uncoded image")
                                }
                            default: print("uncoded image")
                            }
                            
                            showingImageAlert = true
                        }
                        
                        .buttonStyle(.bordered).cornerRadius(20)
                        .alert(ContentView().alertMessage, isPresented: $showingImageAlert) {
                            Button("OK", role: .cancel) {}
                        }
                    }
                }
            }
            .navigationTitle("macOS 11 Big Sur")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct macOS11View_Previews: PreviewProvider {
    static var previews: some View {
        macOS11View()
    }
}
