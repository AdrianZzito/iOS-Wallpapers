//
//  DeviceView.swift
//  Apple Wallpapers
//
//  Created by Adrián Castilla on 26/12/22.
//

import SwiftUI

struct DeviceView: View {
    
    @State private var showingDetail = false
    @State var isPresented: Bool = false
    
    var body: some View {
    
//        let modelName = UIDevice.modelName
        
        NavigationStack {
            
            List(devices) { device in
                
                HStack {
                                
                    switch device.name {
                                    
                    // MARK: Icons definition
                    case "iPhone": Image(systemName: "iphone").font(.system(size: 25))
                                    
                    case "iPad": Image(systemName: "ipad").font(.system(size: 25))
                                    
                    case "Mac": Image(systemName: "macpro.gen3.fill").font(.system(size: 25))
                                    
                    case "Displays": Image(systemName: "display").font(.system(size: 25))
                                    
                    default: Image(systemName: "exclamationmark.triangle")
                    }
                                
                NavigationLink(device.name, value: device)
                                
                }
            }
            .navigationDestination(for: Device.self, destination: { device in
                SpecificDeviceView(name: device.name, specificDeviceArray: device.deviceArray)
            })
            .navigationTitle("Devices")
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

struct DeviceView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceView()
    }
}
