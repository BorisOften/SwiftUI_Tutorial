//
//  IfElseTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/28/23.
//

import SwiftUI

struct IfElseTutorial: View {
    
    @State var showCircle: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Circle button") {
                showCircle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 200)
            }
        }
    }
}

struct IfElseTutorial_Previews: PreviewProvider {
    static var previews: some View {
        IfElseTutorial()
    }
}
