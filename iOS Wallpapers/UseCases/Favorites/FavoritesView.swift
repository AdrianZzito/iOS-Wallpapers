//
//  FavoritesView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 9/1/23.
//

import SwiftUI

struct FavoritesView: View {
    
    @StateObject var favoritesViewModel = FavoritesViewModel()
    @State private var showingAlert = false
    @State private var confirmationAlert = false
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                switch favoritesViewModel.favorites.isEmpty {
                case true:
                    Text("There are no favorites").font(.title)
                case false:
                    List {
                        
                        ForEach(favoritesViewModel.favorites) { favorite in
                            
                            WallpaperRowView(image: favorite.image, name: favorite.name)
                            
                        }
                        
                    }
                    
                }
                
                
            }
            .navigationTitle("Favorites")
            .toolbar {
                Button {
                    
                    switch favoritesViewModel.favorites.isEmpty {
                    case true: showingAlert = true
                    case false: confirmationAlert = true
                    }
                    
                } label: {
                    Image(systemName: "minus")
                }
                .alert("Cannot delete items, there are no favorites yet", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) {}
                }
                .alert("This action will delete the favorite in the final position, do you want to proceed?", isPresented: $confirmationAlert) {
                    Button("Delete") {
                        favoritesViewModel.removeFavorite()
                    }
                    .foregroundColor(.red)
                    Button("Cancel", role: .cancel) {}
                        
                }
            }
        }

    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
