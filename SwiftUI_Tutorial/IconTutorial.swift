//
//  IconTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 4/22/23.
//

import SwiftUI

struct IconTutorial: View {
    var body: some View {
        
//        Image(systemName: "heart")
//            .resizable()
//            //.aspectRatio(contentMode: .fill)
//            .scaledToFit()
//
//
//            .frame(width: 200, height: 300, alignment: .center)
//            .clipped()
        
        Image("popcorn")
            .resizable()
        
            .frame(width: 300, height: 200, alignment: .center)
            .clipShape(
                //Circle()
                RoundedRectangle(cornerRadius: 23)
            )
    }
}

struct IconTutorial_Previews: PreviewProvider {
    static var previews: some View {
        IconTutorial()
    }
}
