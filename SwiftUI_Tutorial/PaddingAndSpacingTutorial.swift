//
//  PaddingAndSpacingTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/13/23.
//

import SwiftUI

struct PaddingAndSpacingTutorial: View {
    var body: some View {
        VStack(spacing: 0) {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(
//                    Color.red
//            )
//                .padding()
//                .background(Color.yellow)
            
//            Text("Not hello world")
//                .background(
//                    Color.blue
//            )
            
            
            HStack {
                Text("My App")
                    .font(.title)
                .fontWeight(.heavy)
                
                Spacer()
            }
            .background(Color.red)
            .padding(.leading)
            
            Text("My app")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(Edge.Set.leading)
        }
            
    }
}

struct PaddingAndSpacingTutorial_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacingTutorial()
    }
}
