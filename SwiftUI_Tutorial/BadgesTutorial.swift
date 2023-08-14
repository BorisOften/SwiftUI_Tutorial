//
//  BadgesTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 8/6/23.
//

import SwiftUI

struct BadgesTutorial: View {
    var body: some View {
        
        TabView {
            Text("First Tab")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Heart")
                        .badge(2)
                }
            
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "car")
                    Text("Car")
                }
                .badge("new")
        }
        
        
    }
}

struct BadgesTutorial_Previews: PreviewProvider {
    static var previews: some View {
        BadgesTutorial()
    }
}
