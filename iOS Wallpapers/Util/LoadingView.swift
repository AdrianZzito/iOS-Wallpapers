//
//  LoadingView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        
        VStack {
            
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
            ProgressView()
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
