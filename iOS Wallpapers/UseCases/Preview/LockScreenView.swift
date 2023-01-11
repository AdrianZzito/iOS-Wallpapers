//
//  LockScreenView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 3/1/23.
//

import SwiftUI

struct LockScreenView: View {
    var body: some View {
        
        
        ZStack {
            
            VStack {
                
                Text("Wed 7 \(Image(systemName: "umbrella.fill")) 10%")
                    .font(.title3)
                
                Text("9:41")
                    .font(.system(size: 100))
                
                HStack {
                    Image("widget1")
                    Image("widget2")
                    
                }
                
            }
            
            
        }
        
        
    }
}

struct LockScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LockScreenView()
    }
}
