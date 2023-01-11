//
//  iOS10View.swift
//  Official Wallpapers
//
//  Created by Adrián Castilla on 27/12/22.
//

import SwiftUI
import Kingfisher

struct iOS10View: View {
    
    @State private var showingImageAlert = false
    @State private var isPresented = false
    
    var body: some View {
        
        VStack {
            List {
                ForEach(iOS10Wallpapers) { wallpaper in
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
            .navigationTitle("iOS 10")
        }
    }
}

struct iOS10View_Previews: PreviewProvider {
    static var previews: some View {
        iOS10View()
    }
}
