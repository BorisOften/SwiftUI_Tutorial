//
//  BindingTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/27/23.
//

import SwiftUI

struct BindingTutorial: View {
    
    @State var backColor: Color = .red
    
    var body: some View {
        ZStack {
            backColor.ignoresSafeArea()
            
            ButtonView(backColor: $backColor)
        }
    }
}

struct ButtonView: View {
    
    @Binding var backColor: Color
    
    var body: some View {
        Button {
            backColor = .yellow
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}




struct BindingTutorial_Previews: PreviewProvider {
    static var previews: some View {
        BindingTutorial()
    }
}
