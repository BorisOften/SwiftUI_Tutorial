//
//  initAndEnumTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/13/23.
//

import SwiftUI

struct initAndEnumTutorial: View {
    
    var background: Color
    var number: String?
    var fruitName: String?
    
    
    var body: some View {
        VStack {
            Text("5")
                .font(.title3)
                .underline()
                
            Text("\(Fruits.banana.rawValue)")
        }
        .frame(width: 100, height: 100)
        .background(background)
        .cornerRadius(10)
        .foregroundColor(.white)
    }
    
    enum Fruits: String {
        case orange
        case banana
    }
}

struct initAndEnumTutorial_Previews: PreviewProvider {
    static var previews: some View {
        initAndEnumTutorial(background: .blue)
    }
}
