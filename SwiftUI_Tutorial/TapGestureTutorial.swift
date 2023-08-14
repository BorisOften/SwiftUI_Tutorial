//
//  TapGestureTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 7/16/23.
//

import SwiftUI

struct TapGestureTutorial: View {
    
    @State var isSelected = false
    
    var body: some View {
        VStack(spacing: 30) {
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 200)
                .padding()
                .foregroundColor(isSelected ? Color.red : Color.blue)
            
            Text("This is a textView with a Tap Gesture")
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
                .font(.headline)
                .onTapGesture {
                    isSelected.toggle()
                }
        }
    }
}

struct TapGestureTutorial_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureTutorial()
    }
}
