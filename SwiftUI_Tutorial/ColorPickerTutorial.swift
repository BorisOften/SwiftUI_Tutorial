//
//  ColorPickerTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/1/23.
//

import SwiftUI

struct ColorPickerTutorial: View {
    
    @State var color: Color = Color.green
    
    var body: some View {
        ZStack {
            color
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Pick a Color", selection: $color)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .padding(.horizontal)
            
                
        }
    }
}

struct ColorPickerTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerTutorial()
    }
}
