//
//  FramesTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/6/23.
//

import SwiftUI

struct FramesTutorial: View {
    var body: some View {
        
        VStack(spacing: 20) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                //.frame(width: 100, height: 100, alignment: .center)
                .background(
                    Color.red
                )
                //.frame(width: 300, height: 200, alignment: .leading)
                .background(
                    Color.blue
                )

            .frame(maxWidth: .greatestFiniteMagnitude  )
            
            Text("Second time")
                .background( Color.red)
                .frame(width: 100, height: 100)
                .background( Color.yellow)
                .frame(width: 170)
                .background( Color.purple)
                .frame(maxWidth: .infinity)
                .background( Color.red)
                .frame(width: 400,height: 400)
                .background( Color.green)
                .frame(maxHeight: .infinity)
                .background(Color.yellow)
            
        }
        
    
    }
}

struct FramesTutorial_Previews: PreviewProvider {
    static var previews: some View {
        FramesTutorial()
    }
}
