//
//  ExtractedFunctionTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/27/23.
//

import SwiftUI

struct ExtractedFunctionTutorial: View {
    
    @State var backg = Color.red
    
    var body: some View {
        ZStack {
            // Background
            backg.ignoresSafeArea()
            
            // content Layer
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                btnPressed()
            } label: {
                Text("Press Me")
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }

        }
    }
    
    func btnPressed() {
        backg = .yellow
    }
}

struct ExtractedFunctionTutorial_Previews: PreviewProvider {
    static var previews: some View {
        
        ExtractedFunctionTutorial()
    }
}
