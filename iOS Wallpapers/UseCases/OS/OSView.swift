//
//  OSView.swift
//  Apple Wallpapers
//
//  Created by Adrián Castilla on 26/12/22.
//

import SwiftUI

struct OSView: View {
    
    @State var isPresented = false
    
    var body: some View {
        
        //let systemVersion = UIDevice.current.systemVersion
        
        NavigationStack {
            
            List(OSs) { os in
                
                HStack {
                    
                    Image(os.osImage)
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .trailing)
                        .clipped()
                    NavigationLink(os.name, value: os)
                }
                
            }
            
            .navigationDestination(for: OS.self) { os in
                /*
                switch os.name {
                case "Current OS Version":
                    switch systemVersion {
                    case "16.0", "16.0.1", "16.0.2", "16.0.3", "16.1", "16.1.1", "16.1.2", "16.2": iOS16View()
                    default: Text("unknown version (Beta versions are detected as unknown)")
                    }
                case "iOS": iOSView()
                case "macOS": MacOSView()
                case "Safari": SafariView()
                default: Text("unknown")
                 */
            }
            
            .navigationTitle("Operating Systems")
            .toolbar {
                Button {
                    isPresented = true
                } label: {
                    Image(systemName: "info.circle")
                }
            }
            .sheet(isPresented: $isPresented, onDismiss: { isPresented = false },
            content: {
                infoView()
                Button {
                    isPresented = false
                } label: {
                    Text("Done").bold()
                }
                .buttonStyle(.bordered)
            })
        }
        
    }
}

struct OSView_Previews: PreviewProvider {
    static var previews: some View {
        OSView()
    }
}
