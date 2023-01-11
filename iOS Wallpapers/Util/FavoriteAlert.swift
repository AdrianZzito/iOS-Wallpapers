//
//  FavoriteAlert.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 8/1/23.
//

import SwiftUI

struct FavoriteAlert: View {
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .fill(.gray)
                .frame(width: 250, height: 250)
                .cornerRadius(50)
            
            VStack {
                
                Image(systemName: "star.fill")
                    .font(.system(size: 50))
                    .padding(.bottom)
                
                Text("Image saved to \nfavorites")
                    .font(.title)
                    .lineLimit(12)
                    .frame(alignment: .center)
                    .bold()
                
            }
            
        }
        
    }
}

struct FavoriteAlert_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteAlert()
    }
}
