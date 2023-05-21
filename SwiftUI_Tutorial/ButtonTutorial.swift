//
//  ButtonTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/20/23.
//

import SwiftUI

struct ButtonTutorial: View {
    
    @State var myText = "getting set"
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(myText)")
                .font(.title)
                .padding()
            
            Spacer()
            
            Button("Click Me 1") {
                myText = "Button 1 tapped"
            }
            
            Button {
                myText = "Button 2 tapped"
            } label: {
                Text("Save")
                    .frame(width: 100, height: 40)
                    .background(
                        Color.blue
                    )
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            
            Button {
                myText = "Button 3 tapped"
            } label: {
                Circle()
                    .fill(.white)
                    .shadow(radius: 5)
                    .frame(width: 90)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
            }
            
            Button {
                myText = "Button 4 tapped"
            } label: {
                // cound have used overlay for this
                ZStack {
                    RoundedRectangle(cornerRadius: 23)
                        .stroke(
                            Color.gray
                        )
                        .frame(width: 100,height: 50)
                        
                    
                    Text("Finished")
                        .foregroundColor(.gray)
                }
                
            }

            
            Spacer()
            
        }
    }
}

struct ButtonTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTutorial()
    }
}
