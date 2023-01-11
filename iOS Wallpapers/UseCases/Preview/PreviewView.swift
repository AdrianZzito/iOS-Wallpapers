//
//  PreviewView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 2/1/23.
//

import SwiftUI
import Kingfisher

struct PreviewView: View {
    
    @State var name: URL
    @State var pickerSelection = 0
    
    var body: some View {
        
        ZStack {
            
            KFImage(name)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .aspectRatio(contentMode: .fill)
                //.frame(width: 400, height: 850)
                //.clipped()
                //.padding()
            
            VStack {
                
                switch pickerSelection {
                case 0:
                    GridAppView()
                    Spacer()
                case 1:
                    LockScreenView()
                    
                default: Text("Error")
                }
                
                Spacer()
                
                Picker("Mode", selection: $pickerSelection) {
                    Text("Home").tag(0)
                    Text("Lock").tag(1)
                }
                .pickerStyle(.segmented)
                .frame(width: 150)
                
            }
            .frame(height: 700)
        }
    }
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView(name: URL(string: "")!)
    }
}
