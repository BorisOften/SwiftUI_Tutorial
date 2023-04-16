//
//  ShapesTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 4/16/23.
//

import SwiftUI

struct ShapesTutorial: View {
    var body: some View {
        
        //Circle()
        
        //Ellipse()
        //Capsule()
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
            
        
            //.fill(Color.red)
            //.foregroundColor(.blue)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [10,20,30]))
            //.trim(from: 0, to: 0.7)
        
//            .trim(from: 0, to: 0.8)
//            .stroke(lineWidth: 20)
//            .foregroundColor(.gray)
        
            .frame(width: 300, height: 400, alignment: .center)
        
        
        
        
    }
}

struct ShapesTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ShapesTutorial()
    }
}
