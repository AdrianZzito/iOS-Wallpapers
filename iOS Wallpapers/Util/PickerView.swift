//
//  PickerView.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 31/12/22.
//

import SwiftUI

struct PickerView: View {
    
    @State var pickerSelection: Int
    
    var body: some View {
        
        Picker("Mode", selection: $pickerSelection) {
            Text("Light").tag(0)
            Text("Dark").tag(1)
        }
        .pickerStyle(.segmented)
        .frame(width: 150)
        
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView(pickerSelection: 0)
    }
}
