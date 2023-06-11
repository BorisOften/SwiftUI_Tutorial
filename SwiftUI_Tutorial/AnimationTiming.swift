//
//  AnimationTiming.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/3/23.
//

import SwiftUI

struct AnimationTiming: View {
    
    @State var isAnimating = false
    var timingSpeed = 10.0
    
    var body: some View {
        VStack {
            Button("Click Me") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 200 : 50, height: 100)
                .animation(.spring())
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 200 : 50, height: 100)
//                .animation(.easeIn(duration: timingSpeed))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 200 : 50, height: 100)
//                .animation(.easeInOut(duration: timingSpeed))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 200 : 50, height: 100)
//                .animation(.easeOut(duration: timingSpeed))
        }
    }
}

struct AnimationTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTiming()
    }
}
