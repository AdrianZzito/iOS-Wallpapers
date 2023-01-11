//
//  iOS13View.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 27/12/22.
//

import SwiftUI
import Kingfisher

struct iOS13View: View {
    
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
                ForEach(iOS13Wallpapers) { wallpaper in
                    VStack {
                        
                        switch pickerSelection {
                        case 0:
                            switch wallpaper.name {
                            case "iOS 13 Orange Light":
                                KFImage(iOS13orangeLightUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                    
                            case "iOS 13 Blue Light":
                                KFImage(iOS13blueLightUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            case "iOS 13 Green Light":
                                KFImage(iOS13greenLightUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            case "iOS 13 Gray Light":
                                KFImage(iOS13grayLightUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            default: Text("uncoded image")
                            }
                            
                        case 1:
                            switch wallpaper.name {
                            case "iOS 13 Orange Light":
                                KFImage(iOS13orangeDarkUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            case "iOS 13 Blue Light":
                                KFImage(iOS13blueDarkUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            case "iOS 13 Green Light":
                                KFImage(iOS13greenDarkUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            case "iOS 13 Gray Light":
                                KFImage(iOS13grayDarkUrl)
                                    .placeholder {
                                        LoadingView()
                                    }
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 800, alignment: .center)
                                    .clipped()
                                
                            default: Text("uncoded image")
                            }
                            
                        default: Text("uncoded image")
                        }
                        
                        Text(wallpaper.name)
                            .font(.title2)
                        
                        Button("Save") {
                            
                            switch pickerSelection {
                            case 0:
                                switch wallpaper.name {
                                case "iOS 13 Orange Light": saveImage(url: iOS13orangeLightUrl!)
                                case "iOS 13 Blue Light": saveImage(url: iOS13blueLightUrl!)
                                case "iOS 13 Green Light": saveImage(url: iOS13greenLightUrl!)
                                case "iOS 13 Gray Light": saveImage(url: iOS13grayLightUrl!)
                                default: print("uncoded image")
                                }
                            case 1:
                                switch wallpaper.name {
                                case "iOS 13 Orange Light": saveImage(url: iOS13orangeDarkUrl!)
                                case "iOS 13 Blue Light": saveImage(url: iOS13blueDarkUrl!)
                                case "iOS 13 Green Light": saveImage(url: iOS13greenDarkUrl!)
                                case "iOS 13 Gray Light": saveImage(url: iOS13grayDarkUrl!)
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
            .navigationTitle("iOS 13")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct iOS13View_Previews: PreviewProvider {
    static var previews: some View {
        iOS13View()
    }
}
