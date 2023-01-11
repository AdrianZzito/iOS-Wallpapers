//
//  FavoritesViewModel.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 9/1/23.
//

import Foundation
import SwiftUI

final class FavoritesViewModel: ObservableObject {
    
    @Published var favorites: [Wallpaper] = []
    
    init() {
        favorites = getAllFavorites()
    }
    
    func saveFavorite(name: String, image: URL, hasDark: Bool) {
        let newFavorite = Wallpaper(name: name, image: image, hasDark: hasDark)
        favorites.append(newFavorite)
        encodeAndSaveFavorites()
    }
    
    private func encodeAndSaveFavorites() {
        if let encoded = try? JSONEncoder().encode(favorites) {
            UserDefaults.standard.set(encoded, forKey: "favorites")
        }
    }
    
    func getAllFavorites() -> [Wallpaper] {
        if let favoritesData = UserDefaults.standard.object(forKey: "favorites") as? Data {
            if let favorites = try? JSONDecoder().decode([Wallpaper].self, from: favoritesData) {
                return favorites
            }
        }
        return []
    }
    
    func removeFavorite() {
        favorites.remove(at: favorites.count - 1)
        encodeAndSaveFavorites()
    }
    
}
