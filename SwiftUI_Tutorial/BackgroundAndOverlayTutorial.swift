//
//  BackgroundAndOverlayTutorial.swift
//  SwiftUI_Tutorial
//
//  Created by Boris Ofon on 5/6/23.
//

import SwiftUI

struct BackgroundAndOverlayTutorial: View {
    var body: some View {
        VStack(spacing: 30) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 100)
                .background(alignment: .leading) {
                    //Color.red
                    
                    //LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
                    
                    Circle()
                        .fill(Color.red)
                }
                .frame(width: 120,height: 120)
                .background(
                    Circle()
                        .fill(Color.blue)
            )
            
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay {
                    Text("This is an overlay")
                        .foregroundColor(.blue)
                }
                .background {
                    Rectangle()
                        .fill(Color.gray)
                }
            
            
            Circle()
                .fill(
                    LinearGradient(colors: [Color.purple, Color.blue], startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: 80, height: 80)
                .shadow(radius: 20)
                .overlay {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                .overlay(alignment: .bottomTrailing) {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                        .overlay(
                            Text("5")
                        )
                }
                
        }
    }
}

struct BackgroundAndOverlayTutorial_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayTutorial()
    }
}
