//
//  TextTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 4/16/23.
//

import SwiftUI

struct TextTutorial: View {
    var body: some View {
        Text("Hello, World!,")
            //.font(.body)
        
            //.fontWeight(.heavy)
        
//            .bold()
//            .underline()
//            .strikethrough()
        
//            .font(.system(size: 24,weight: .heavy))
        
            //w.multilineTextAlignment(.trailing)
            .foregroundColor(.blue)
            .frame(width: 300, height: 200, alignment: .leading)
        
    }
}



struct TextTutorial_Previews: PreviewProvider {
    static var previews: some View {
        TextTutorial()
    }
}
