//
//  StateTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/27/23.
//

import SwiftUI

struct StateTutorial: View {
    @State var backgroundColor: Color = .red
    @State var buttonNumber = 0
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text("Button \(buttonNumber) pressed")
                    .padding()
                Text("Count: 1")
                    .padding()
                
                HStack {
                    
                    Button("Button 1") {
                        buttonNumber = 1
                        backgroundColor = .blue
                    }
                    
                    Button("Button 2") {
                        buttonNumber = 2
                        backgroundColor = .black
                    }
                }
            }
            .foregroundColor(.white)
            .font(.title)
        }
    }
}

struct StateTutorial_Previews: PreviewProvider {
    static var previews: some View {
        StateTutorial()
    }
}
