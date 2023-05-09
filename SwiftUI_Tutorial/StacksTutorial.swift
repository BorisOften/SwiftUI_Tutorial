//
//  StacksTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/6/23.
//

import SwiftUI

struct StacksTutorial: View {
    var body: some View {
        
        //VStack (spacing: 0) {
        VStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
    }
}

struct StacksTutorial_Previews: PreviewProvider {
    static var previews: some View {
        StacksTutorial()
    }
}
