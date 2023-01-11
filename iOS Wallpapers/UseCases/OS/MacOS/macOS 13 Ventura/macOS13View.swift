//
//  macOS13View.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 28/12/22.
//

import SwiftUI
import Kingfisher

struct macOS13View: View {
    
    @State private var showingImageAlert = false
    @State private var pickerSelection = 0
    @State private var isPresented = false
    
    var body: some View {
        
        VStack {
            
            Picker("Mode", selection: $pickerSelection) {
                Text("Light").tag(0)
                Text("Dark").tag(1)
            }
            .pickerStyle(.segmented)
            .frame(width: 150)
            
            List {
                ForEach(macOS13Wallpapers) { wallpaper in
                    VStack {
                        switch pickerSelection {
                        case 0:
                            
                            KFImage(wallpaper.url)
                                .placeholder {
                                    LoadingView()
                                }
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400, height: 800, alignment: .center)
                                .clipped()
                            
                        case 1:
                            
                            KFImage(wallpaper.darkUrl)
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
                        
                        HStack {
                            
                            Button("Save") {
                                
                                switch pickerSelection {
                                case 0:
                                    
                                    saveImage(url: wallpaper.url)
                                    
                                case 1:
                                    
                                    saveImage(url: wallpaper.darkUrl)
                                    
                                default: print("uncoded image")
                                }
                                
                                showingImageAlert = true
                            }
                            
                            .buttonStyle(.bordered).cornerRadius(20)
                            
                            .alert(ContentView().alertMessage, isPresented: $showingImageAlert) {
                                Button("OK", role: .cancel) {}
                            }
                            
                            Button("Preview") {
                                
                                isPresented = true
                                
                            }
                            .sheet(isPresented: $isPresented, onDismiss: { isPresented = false }, content: {
                                
                                switch pickerSelection {
                                case 0:
                                    PreviewView(name: wallpaper.url)
                                case 1:
                                    PreviewView(name: wallpaper.darkUrl)
                                default: Text("error")
                                }
                                
                            })
                            .buttonStyle(.bordered).cornerRadius(20)
                            
                        }
                        
                    }
                }
            }
            .navigationTitle("macOS 13 Ventura")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct macOS13View_Previews: PreviewProvider {
    static var previews: some View {
        macOS13View()
    }
}
