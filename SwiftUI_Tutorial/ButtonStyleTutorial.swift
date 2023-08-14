//
//  ButtonStyleTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 8/6/23.
//

import Foundation
import SwiftUI


struct ButtonStyleTutorial: View {
    
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("This is a button")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button {
                
            } label: {
                Text("This is a button 2")
            }
            .buttonStyle(.borderedProminent)
            
            .padding()
        }
    }
}

struct ButtonStyleTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleTutorial()
    }
}
