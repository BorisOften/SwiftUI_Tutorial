//
//  AnimationTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/3/23.
//

import SwiftUI

struct AnimationTutorial: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Click Me") {
//                withAnimation(.default.delay(1)
//                    .repeatCount(3)) {
                    isAnimated.toggle()
//                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ?  Color.green : Color.red)
                .frame(width: 300, height: 300)
                .offset(y: isAnimated ? 150 : 0)
                .animation(.default)
                
            
            Spacer()
        }
    }
}

struct AnimationTutorial_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTutorial()
    }
}
