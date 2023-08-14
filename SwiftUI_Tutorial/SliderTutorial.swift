//
//  SliderTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/15/23.
//

import SwiftUI

struct SliderTutorial: View {
    
    @State var slider = 0.5
    
    var body: some View {
        VStack {
            //Slider(value: $slider)
                //.padding()
            
            //Slider(value: $slider, in: 0...4)
            
//            Slider(value: $slider) {
//
//            } minimumValueLabel: {
//                Text("0")
//            } maximumValueLabel: {
//                Text("5")
//            }
            
            Slider(value: $slider, in: 0...5, step: 1) { isChanged in
                
            }
            .tint(.red)

            
            Text("Slider value: \(slider)")
        }
    }
}

struct SliderTutorial_Previews: PreviewProvider {
    static var previews: some View {
        SliderTutorial()
    }
}
