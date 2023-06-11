//
//  TransitionTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/3/23.
//

import SwiftUI

struct TransitionTutorial: View {

    @State var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Click Me") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showView ? 1.0 : 0 )
                    .transition(.move(edge: .bottom))
                    .animation(.easeOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionTutorial_Previews: PreviewProvider {
    static var previews: some View {
        TransitionTutorial()
    }
}
