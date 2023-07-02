//
//  ContentMenuTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/24/23.
//

import SwiftUI

struct ContentMenuTutorial: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "house.fill")
            Text("How to use content Menu")
            
        }
        .padding()
        .background(
            Color.blue
        )
        .foregroundColor(.white)
        .cornerRadius(20)
        .contextMenu(menuItems: {
            
                Text("Menu number 1")
                Text("Menu number 2")
        })
    }
}

struct ContentMenuTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ContentMenuTutorial()
    }
}
