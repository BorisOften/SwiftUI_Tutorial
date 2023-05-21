//
//  SafeAreaTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/20/23.
//

import SwiftUI

struct SafeAreaTutorial: View {
    var body: some View {
        ZStack {
            Color.blue
            
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.red)
                
                Spacer()
            }
        }
        
    }
}

struct SafeAreaTutorial_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaTutorial()
    }
}
