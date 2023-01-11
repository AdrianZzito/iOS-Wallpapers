//
//  iOS9View.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 29/12/22.
//

import SwiftUI
import Kingfisher

struct iOS9View: View {
    
    @State private var showingImageAlert = false
    
    var body: some View {
        
        VStack {
            List {
                ForEach(iOS9Wallpapers) { wallpaper in
                    VStack {
                        switch wallpaper.name {
                        case "iOS 9 Blue Landscape":
                            KFImage(blueLandscapeUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Yellow Landscape":
                            KFImage(yellowLandscapeUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Brown Landscape":
                            KFImage(brownLandscapeUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Blue Planet":
                            KFImage(bluePlanetUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()

                            
                        case "iOS 9 White Planet":
                            KFImage(whitePlanetUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Orange Planet":
                            KFImage(orangePlanetUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Green Splash":
                            KFImage(greenSplashUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Pink Splash":
                            KFImage(pinkSplashUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                            
                        case "iOS 9 Yellow Splash":
                            KFImage(yellowSplashUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                            
                        case "iOS 9 Orange Feathers":
                            KFImage(orangeFeathersUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Gray Feathers":
                            KFImage(grayFeathersUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "iOS 9 Blue Feathers":
                            KFImage(blueFeathersUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                            
                        case "iOS 9 Green Plant":
                            KFImage(greenPlantUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                            
                        case "iOS 9 Purple Plant":
                            KFImage(purplePlantUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                            
                        case "iOS 9 Yellow Plant":
                            KFImage(yellowPlantUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                            
                        default: Text("uncoded image")
                        }
                        Text(wallpaper.name)
                            .font(.title2)
                        Button("Save") {
                            switch wallpaper.name {
                            case "iOS 9 Blue Landscape": saveImage(url: blueLandscapeUrl!)
                            case "iOS 9 Yellow Landscape": saveImage(url: yellowLandscapeUrl!)
                            case "iOS 9 Brown Landscape": saveImage(url: brownLandscapeUrl!)
                            case "iOS 9 Blue Planet": saveImage(url: bluePlanetUrl!)
                            case "iOS 9 White Planet": saveImage(url: whitePlanetUrl!)
                            case "iOS 9 Orange Planet": saveImage(url: orangePlanetUrl!)
                            case "iOS 9 Green Splash": saveImage(url: greenSplashUrl!)
                            case "iOS 9 Pink Splash": saveImage(url: pinkSplashUrl!)
                            case "iOS 9 Yellow Splash": saveImage(url: yellowSplashUrl!)
                            case "iOS 9 Orange Feathers": saveImage(url: orangeFeathersUrl!)
                            case "iOS 9 Gray Feathers": saveImage(url: grayFeathersUrl!)
                            case "iOS 9 Blue Feathers": saveImage(url: blueFeathersUrl!)
                            case "iOS 9 Green Plant": saveImage(url: greenPlantUrl!)
                            case "iOS 9 Purple Plant": saveImage(url: purplePlantUrl!)
                            case "iOS 9 Yellow Plant": saveImage(url: yellowPlantUrl!)
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
            .navigationTitle("iOS 9")
        }
    }
}

struct iOS9View_Previews: PreviewProvider {
    static var previews: some View {
        iOS9View()
    }
}
