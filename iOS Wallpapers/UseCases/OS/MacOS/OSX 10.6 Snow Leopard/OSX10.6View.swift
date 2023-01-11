//
//  OSX10.6View.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 28/12/22.
//

import SwiftUI
import Kingfisher

struct OSX10_6View: View {
    
    @State private var showingImageAlert = false
    @State private var isPresented = false
    
    var body: some View {
                
        VStack {
            List {
                ForEach(OSX10_6Wallpapers) { wallpaper in
                    VStack {
                        
                        KFImage(wallpaper.url)
                            .placeholder {
                                LoadingView()
                            }
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 800, alignment: .center)
                            .clipped()
                        
                        Text(wallpaper.name)
                            .font(.title2)
                        
                        HStack {
                            
                            Button("Save") {
                                
                                saveImage(url: wallpaper.url)
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
                                
                                PreviewView(name: wallpaper.url)
                                
                            })
                            .buttonStyle(.bordered).cornerRadius(20)
                            
                        }
                        
                    }
                }
            }
            .navigationTitle("OS X 10.6 Snow Leopard")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct OSX10_6View_Previews: PreviewProvider {
    static var previews: some View {
        OSX10_6View()
    }
}
