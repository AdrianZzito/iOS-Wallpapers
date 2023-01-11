//
//  SpecificDeviceRowView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 6/1/23.
//

import SwiftUI
import Kingfisher

struct WallpaperRowView: View {
    
    let image: URL
    let name: String
    @State private var alertPresent = false
    @State private var pickerPresent = false
    @State private var favoriteAlert = false
    @StateObject var favoritesViewModel = FavoritesViewModel()
    
    var body: some View {
        
        HStack {
            
            KFImage(image)
                .placeholder {
                    LoadingView()
                }
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 200)
                .cornerRadius(20)
                .padding(.trailing)
                
            Spacer()
            
            VStack {
                
                Text(name)
                    .font(.title2)
                    .padding(.bottom)
                    .frame(alignment: .trailing)
                
                HStack {
                    
                    
                    Button {
                        favoritesViewModel.saveFavorite(name: name, image: image, hasDark: false)
                        favoriteAlert = true
                    } label: {
                        Image(systemName: "star")
                    }
                    .alert("Image added to favorites!", isPresented: $favoriteAlert) {
                        Button("OK", role: .cancel) {}
                    }
                    
                    
                    Button("Save") {
                        saveImage(url: image)
                        alertPresent = true
                    }
                    .buttonStyle(.bordered).cornerRadius(20)
                    .alert(ContentView().alertMessage, isPresented: $alertPresent) {
                        Button("OK", role: .cancel) {}
                    }
                    
                    
                    Button("Preview") {
                        pickerPresent = true
                    }
                    .buttonStyle(.bordered).cornerRadius(20)
                    .sheet(isPresented: $pickerPresent, onDismiss: { pickerPresent = false }, content: {
                        PreviewView(name: image)
                    })
                    
                    
                }
            } // VStack
            
        }
    }
}

struct SpecificDeviceRowView_Previews: PreviewProvider {
    static var previews: some View {
        WallpaperRowView(image: URL(string: "")!, name: "test")
    }
}
