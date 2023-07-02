//
//  NavigationViewTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 6/11/23.
//

import SwiftUI

struct NavigationViewTutorial: View {
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                NavigationLink("Click") {
                    OtherScreen()
                }
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(.hidden)
        }
    }
}

struct OtherScreen: View {
    
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Text("Second Screen")
            
                .navigationTitle("Second Screen")
        }
    }
}

struct NavigationViewTutorial_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewTutorial()
    }
}
