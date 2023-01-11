//
//  SafariView.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 29/12/22.
//

import SwiftUI
import Kingfisher

struct SafariView: View {
    
    @State private var showingImageAlert = false
    
    var body: some View {
        
        VStack {
            List {
                ForEach(SafariWallpapers) { wallpaper in
                    VStack {
                        
                        switch wallpaper.name {
                            
                        case "Safari Blue":
                            KFImage(safariBlueUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "Safari Orange":
                            KFImage(safariOrangeUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case "Safari Pink":
                            KFImage(safariPinkUrl)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        default: Text("Uncoded")
                            
                        }
                            
                        
                        Text(wallpaper.name)
                            .font(.title2)
                        
                        Button("Save") {
                            
                            switch wallpaper.name {
                            case "Safari Blue": saveImage(url: safariBlueUrl!)
                                
                            case "Safari Orange": saveImage(url: safariOrangeUrl!)
                                
                            case "Safari Pink": saveImage(url: safariPinkUrl!)
                                
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
            .navigationTitle("Safari")
        }
    }
}

struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView()
    }
}
