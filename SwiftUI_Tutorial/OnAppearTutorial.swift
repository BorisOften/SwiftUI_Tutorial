//
//  OnAppearTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/15/23.
//

import SwiftUI

struct OnAppearTutorial: View {
    
    @State var myText = "Starting Text..."
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    myText = "Changed text"
                }
            })
            
            .navigationTitle("My Title")
        }
    }
}

struct OnAppearTutorial_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearTutorial()
    }
}
