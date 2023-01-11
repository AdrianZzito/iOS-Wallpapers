//
//  GridAppView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 2/1/23.
//

import SwiftUI

struct GridAppView: View {
    var body: some View {
        
        VStack {
            
            // 1st row
            HStack {
                
                VStack {
                    
                    Image("facetime")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                        .clipped()
                    Text("Facetime")
                        .font(.footnote)
                    
                }
                .padding()
                
                VStack {
                    
                    Image("calendar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("Calendar")
                        .font(.footnote)
                    
                }
                .padding(.trailing)
                
                VStack {
                    
                    Image("photos")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("Photos")
                        .font(.footnote)
                    
                }
                
                
                VStack {
                    
                    Image("camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("Camera")
                        .font(.footnote)
                    
                }
                .padding()
            }
            .frame(alignment: .center)
            
            // 2nd row
            HStack {
                
                VStack {
                    
                    Image("mail")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                        .clipped()
                    Text("Mail")
                        .font(.footnote)
                    
                }
                .padding()
                
                VStack {
                    
                    Image("findMy")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("Find My")
                        .font(.footnote)
                    
                }
                .padding(.trailing)
                
                VStack {
                    
                    Link(destination: URL(string: "https://twitter.com/ZzitoAdrian")!) {
                        Image("twitter")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 65, height: 65)
                            .cornerRadius(15)
                    }
                    Text("Twitter")
                        .font(.footnote)
                    
                }
                
                
                VStack {
                    
                    Image("settings")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("Settings")
                        .font(.footnote)
                    
                }
                .padding()
                
            }
            
            // 3rd Row
            HStack {
                
                VStack {
                    
                    Image("appStore")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                        .clipped()
                    Text("Connect")
                        .font(.footnote)
                    
                }
                .padding()
                
                VStack {
                    
                    Image("swift")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("Swift")
                        .font(.footnote)
                    
                }
                .padding(.trailing)
                
                VStack {
                    
                    Image("realityComposer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("Composer")
                        .font(.footnote)
                    
                }
                
                
                VStack {
                    
                    Image("testflight")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    Text("TestFlight")
                        .font(.footnote)
                    
                }
                .padding()
                
            }
            
        }
        
    }
}

struct GridAppView_Previews: PreviewProvider {
    static var previews: some View {
        GridAppView()
    }
}
