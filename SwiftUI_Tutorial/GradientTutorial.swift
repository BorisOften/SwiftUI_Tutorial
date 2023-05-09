//
//  GradientTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 4/22/23.
//

import SwiftUI

struct GradientTutorial: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 23)
            .fill(
                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .leading)
                
               // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .trailing)
                
                //RadialGradient(colors: [Color.red, Color.blue], center: .leading, startRadius: 60, endRadius: 100)
                
                AngularGradient(colors: [Color.red, Color.blue], center: .top)
                
            )
            .frame(width: 250, height: 300, alignment: .center)
    }
}

struct GradientTutorial_Previews: PreviewProvider {
    static var previews: some View {
        GradientTutorial()
    }
}
